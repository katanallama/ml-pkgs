{ lib
, buildPythonPackage
, fetchPypi
, beautifulsoup4
, botocore
, scramp
, requests
, lxml
, packaging
, boto3
, pytz
}:

# TODO(breakds): Make this for other systems such as MacOSX and Windows.

buildPythonPackage rec {
  pname = "redshift-connector";
  version = "2.0.884";
  format = "wheel";

  src = builtins.fetchurl {
    url = "https://files.pythonhosted.org/packages/19/5c/0865f58e29a5c8106f58e4d1ef70ed8398be07e8615e06ca3a88cf64322d/redshift_connector-2.0.884-py3-none-any.whl";
    sha256 = "1ggb94hq8abh8b8nhm3j0hmjbbvqmdh47vvf7iw4a15v3nx20j1j";
  };

  propagatedBuildInputs = [
    beautifulsoup4
    botocore
    scramp
    requests
    lxml
    packaging
    boto3
    pytz
  ];

  meta = with lib; {
    description = ''
      Redshift Python Connector. It supports Python Database API
      Specification v2.0
    '';
    homepage = "https://github.com/aws/amazon-redshift-python-driver";
    license = licenses.asl20;
    maintainers = with maintainers; [ breakds ];
  };
}