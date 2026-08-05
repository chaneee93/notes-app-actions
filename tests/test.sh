#!/bin/sh
echo "=== 테스트 시작 ==="

if [ -f src/app.sh ]; then
    echo "테스트 1 통과: app.sh 파일 존재"
else
    echo "테스트 1 실패"
    exit 1
fi

OUTPUT=$(sh src/app.sh)
if echo "$OUTPUT" | grep -q "Notes App"; then
    echo "테스트 2 통과: 앱 정상 실행"
else
    echo "테스트 2 실패"
    exit 1
fi

echo "=== 모든 테스트 통과 ==="
