# gitbook 의존 파일을 설치하고 gitbook 빌드를 돌린다.
gitbook install && gitbook build

# github pages가 바라보는 gh-pages 브랜치를 만든다.
git checkout gh-pages

# 최신 gh-pages 브랜치 정보를 가져와 rebase를 진행한다.
git pull origin gh-pages --rebase

# gitbook build로 생긴 _book폴더 아래 모든 정보를 현재 위치로 가져온다.
cp -R _book/* .

# node_modules 폴더와 _book폴더를 지워준다.
git clean -fx node_modules
git clean -fx _book

# NOQA
git add .

# commit
git commmit -a -m "Update docs"

# gh-pages 브랜치에 push
git push origin gh-pages

# 마스터 브랜치로 돌아오기
git checkout master