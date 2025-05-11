# Release Process

This guide provides a chronological steps which goes through release tagging, staging, verification and publishing.

## Check the SNAPSHOT builds and pass the tests

Check that the project builds in java 11.

```bash
mvn clean package verify 
```

## Set version and build 

```bash
# change release in poms
mvn clean package verify
mvn -Psign clean package javadoc:jar source:jar install deploy
git add -A
git commit -S -m 'Release 10.0.1'
git tag -a v.10.0.1 -m "Tagging release 10.0.1"
git push
git push --tags
```


## Prepare next iteration

```bash
# change release in poms
git add -A
git commit -S -m 'Next release cycle'
git push
```

## Create release and upload artifacts to Github

Manually creating the release in Github project page, and upload generated artifacts.
