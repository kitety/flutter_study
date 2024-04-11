const allAnimationTime = translationTime +
    beforeTranslationDelay +
    bottomBtnShowTime +
    cardScaleTime +
    cardTranslateTime +
    heartScaleBigDurationTime +
    heartScaleBigSmallWaitDurationTime +
    heartScaleSmallDurationTime;
// 按钮时间由两部分组成
const beforeTranslationDelay = 200;

const beforeTranslationDuration =
    Duration(milliseconds: beforeTranslationDelay);
// 按钮显示
const bottomBtnShowDuration = Duration(milliseconds: bottomBtnShowTime);

const bottomBtnShowTime = 300;
// 卡片缩放
const cardScaleDuration = Duration(milliseconds: cardScaleTime);
const cardScaleTime = 400;
//卡片 translate
const cardTranslateDuration = Duration(milliseconds: cardTranslateTime);

const cardTranslateTime = 400;
// 心形变大
const heartScaleBigDuration =
    Duration(milliseconds: heartScaleBigDurationTime); //放大

const heartScaleBigDurationTime = 600; // 放大动画持续时间
// 心形放大到缩小等待
const heartScaleBigSmallWaitDuration =
    Duration(milliseconds: heartScaleBigSmallWaitDurationTime); //放大到缩小的等待

const heartScaleBigSmallWaitDurationTime = 500; // 放大到缩小的等待
//心形变小
const heartScaleSmallDuration =
    Duration(milliseconds: heartScaleSmallDurationTime); //缩小

const heartScaleSmallDurationTime = 400; // 缩小动画持续时间
// 卡片平移时间
const translationDuration = Duration(milliseconds: translationTime);

const translationTime = 300;
// 放大 等待 缩小
final heartScaleBigSmallDuration =
    heartScaleBigDuration + heartScaleBigSmallWaitDuration;
