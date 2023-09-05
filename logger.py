import requests, json, sys, os

project_name    = str(os.environ["NAME_DT"]) # https://github.com/0c34/govwa https://github.com/netlify/gocommerce
project_branch  = str(os.environ["BRANCH_DT"])
project_ip      = str(os.environ["IP_DT"])
apiKey          = str(os.environ["API_KEY"])

print(project_name, project_branch, project_ip, apiKey)

def to_log(name, url, headers):
    resp = requests.get(url, headers=headers)
    parsed = json.loads(resp.content)
    with open(name, "w") as file:
        file.write(json.dumps(parsed, indent=2, sort_keys=True))

def uuid_get(name, branch, url, headers):
    resp = requests.get(url,headers=headers)
    parsed = json.loads(resp.content)
    for el in parsed:
        if el['name'] == name and el['version'] == branch:
            return el["uuid"]
                 
# Must have uuid http://localhost:8081/api/v1/metrics/project/{uuid}/current 
# and api-key from dependency-tracker GUI below
# to execute more cURL commands check htwagger.jtp://localhost:8081/api/sson with SwaggerUI plugin in ur browser
headers = {"X-Api-Key": apiKey, "accept": "application/json"}

uuid = uuid_get( project_name, project_branch,
                 project_ip + '/api/v1/project', 
                 headers=headers )

to_log( name =   'vuln.log', 
        url =    project_ip + '/api/v1/metrics/project/' + str(uuid) + '/current',
        headers = headers )

to_log( name =   'vuln_description.log',
        url =    project_ip + '/api/v1/vulnerability/project/' + str(uuid),
        headers = headers )
