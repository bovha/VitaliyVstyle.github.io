.class public Lcom/droidlogic/vitlauncher/MyRelativeLayout;
.super Landroid/widget/RelativeLayout;
.source "MyRelativeLayout.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/droidlogic/vitlauncher/MyRelativeLayout$1;,
        Lcom/droidlogic/vitlauncher/MyRelativeLayout$killProcessesThread;
    }
.end annotation


# instance fields
.field private availMemory:J

.field private isSwitchAnimRunning:Z

.field private layoutCompleted:Z

.field private mActivityManager:Landroid/app/ActivityManager;

.field private mContext:Landroid/content/Context;

.field private mIntent:Landroid/content/Intent;

.field private mIsAddButton:Z

.field private mNumber:I

.field private mType:I

.field private memory_circle:Landroid/widget/ImageView;

.field private memory_used:Landroid/widget/TextView;

.field myHander:Landroid/os/Handler;

.field private operatingAnim:Landroid/view/animation/Animation;

.field private totalMemory:J


# direct methods
.method static synthetic -get0(Lcom/droidlogic/vitlauncher/MyRelativeLayout;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/droidlogic/vitlauncher/MyRelativeLayout;->memory_circle:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/droidlogic/vitlauncher/MyRelativeLayout;)V
    .locals 0

    invoke-direct {p0}, Lcom/droidlogic/vitlauncher/MyRelativeLayout;->killBackgroundProcesses()V

    return-void
.end method

.method static synthetic -wrap1(Lcom/droidlogic/vitlauncher/MyRelativeLayout;)V
    .locals 0

    invoke-direct {p0}, Lcom/droidlogic/vitlauncher/MyRelativeLayout;->memory_show()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    const/4 v2, -0x1

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/droidlogic/vitlauncher/MyRelativeLayout;->mContext:Landroid/content/Context;

    iput-boolean v0, p0, Lcom/droidlogic/vitlauncher/MyRelativeLayout;->layoutCompleted:Z

    iput v2, p0, Lcom/droidlogic/vitlauncher/MyRelativeLayout;->mType:I

    iput-object v1, p0, Lcom/droidlogic/vitlauncher/MyRelativeLayout;->mIntent:Landroid/content/Intent;

    iput v2, p0, Lcom/droidlogic/vitlauncher/MyRelativeLayout;->mNumber:I

    iput-boolean v0, p0, Lcom/droidlogic/vitlauncher/MyRelativeLayout;->mIsAddButton:Z

    iput-boolean v0, p0, Lcom/droidlogic/vitlauncher/MyRelativeLayout;->isSwitchAnimRunning:Z

    iput-object v1, p0, Lcom/droidlogic/vitlauncher/MyRelativeLayout;->mActivityManager:Landroid/app/ActivityManager;

    new-instance v0, Lcom/droidlogic/vitlauncher/MyRelativeLayout$1;

    invoke-direct {v0, p0}, Lcom/droidlogic/vitlauncher/MyRelativeLayout$1;-><init>(Lcom/droidlogic/vitlauncher/MyRelativeLayout;)V

    iput-object v0, p0, Lcom/droidlogic/vitlauncher/MyRelativeLayout;->myHander:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, -0x1

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v1, p0, Lcom/droidlogic/vitlauncher/MyRelativeLayout;->mContext:Landroid/content/Context;

    iput-boolean v0, p0, Lcom/droidlogic/vitlauncher/MyRelativeLayout;->layoutCompleted:Z

    iput v2, p0, Lcom/droidlogic/vitlauncher/MyRelativeLayout;->mType:I

    iput-object v1, p0, Lcom/droidlogic/vitlauncher/MyRelativeLayout;->mIntent:Landroid/content/Intent;

    iput v2, p0, Lcom/droidlogic/vitlauncher/MyRelativeLayout;->mNumber:I

    iput-boolean v0, p0, Lcom/droidlogic/vitlauncher/MyRelativeLayout;->mIsAddButton:Z

    iput-boolean v0, p0, Lcom/droidlogic/vitlauncher/MyRelativeLayout;->isSwitchAnimRunning:Z

    iput-object v1, p0, Lcom/droidlogic/vitlauncher/MyRelativeLayout;->mActivityManager:Landroid/app/ActivityManager;

    new-instance v0, Lcom/droidlogic/vitlauncher/MyRelativeLayout$1;

    invoke-direct {v0, p0}, Lcom/droidlogic/vitlauncher/MyRelativeLayout$1;-><init>(Lcom/droidlogic/vitlauncher/MyRelativeLayout;)V

    iput-object v0, p0, Lcom/droidlogic/vitlauncher/MyRelativeLayout;->myHander:Landroid/os/Handler;

    iput-object p1, p0, Lcom/droidlogic/vitlauncher/MyRelativeLayout;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v3}, Lcom/droidlogic/vitlauncher/MyRelativeLayout;->setFocusable(Z)V

    invoke-virtual {p0, v3}, Lcom/droidlogic/vitlauncher/MyRelativeLayout;->setFocusableInTouchMode(Z)V

    const/high16 v0, 0x20000

    invoke-virtual {p0, v0}, Lcom/droidlogic/vitlauncher/MyRelativeLayout;->setDescendantFocusability(I)V

    invoke-virtual {p0}, Lcom/droidlogic/vitlauncher/MyRelativeLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3

    const/4 v2, -0x1

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v1, p0, Lcom/droidlogic/vitlauncher/MyRelativeLayout;->mContext:Landroid/content/Context;

    iput-boolean v0, p0, Lcom/droidlogic/vitlauncher/MyRelativeLayout;->layoutCompleted:Z

    iput v2, p0, Lcom/droidlogic/vitlauncher/MyRelativeLayout;->mType:I

    iput-object v1, p0, Lcom/droidlogic/vitlauncher/MyRelativeLayout;->mIntent:Landroid/content/Intent;

    iput v2, p0, Lcom/droidlogic/vitlauncher/MyRelativeLayout;->mNumber:I

    iput-boolean v0, p0, Lcom/droidlogic/vitlauncher/MyRelativeLayout;->mIsAddButton:Z

    iput-boolean v0, p0, Lcom/droidlogic/vitlauncher/MyRelativeLayout;->isSwitchAnimRunning:Z

    iput-object v1, p0, Lcom/droidlogic/vitlauncher/MyRelativeLayout;->mActivityManager:Landroid/app/ActivityManager;

    new-instance v0, Lcom/droidlogic/vitlauncher/MyRelativeLayout$1;

    invoke-direct {v0, p0}, Lcom/droidlogic/vitlauncher/MyRelativeLayout$1;-><init>(Lcom/droidlogic/vitlauncher/MyRelativeLayout;)V

    iput-object v0, p0, Lcom/droidlogic/vitlauncher/MyRelativeLayout;->myHander:Landroid/os/Handler;

    return-void
.end method

.method private getAvailMemory()J
    .locals 6

    iget-object v1, p0, Lcom/droidlogic/vitlauncher/MyRelativeLayout;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "activity"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager;

    iput-object v1, p0, Lcom/droidlogic/vitlauncher/MyRelativeLayout;->mActivityManager:Landroid/app/ActivityManager;

    new-instance v0, Landroid/app/ActivityManager$MemoryInfo;

    invoke-direct {v0}, Landroid/app/ActivityManager$MemoryInfo;-><init>()V

    iget-object v1, p0, Lcom/droidlogic/vitlauncher/MyRelativeLayout;->mActivityManager:Landroid/app/ActivityManager;

    invoke-virtual {v1, v0}, Landroid/app/ActivityManager;->getMemoryInfo(Landroid/app/ActivityManager$MemoryInfo;)V

    iget-wide v2, v0, Landroid/app/ActivityManager$MemoryInfo;->availMem:J

    const-wide/32 v4, 0x100000

    div-long/2addr v2, v4

    return-wide v2
.end method

.method private getTotalMemory()J
    .locals 13

    const-string/jumbo v7, "/proc/meminfo"

    const-wide/16 v2, 0x0

    :try_start_0
    new-instance v5, Ljava/io/FileReader;

    invoke-direct {v5, v7}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    new-instance v4, Ljava/io/BufferedReader;

    const/16 v9, 0x2000

    invoke-direct {v4, v5, v9}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v9, "\\s+"

    invoke-virtual {v8, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v9, 0x1

    aget-object v9, v0, v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    int-to-long v2, v9

    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    const-wide/16 v10, 0x400

    div-long v10, v2, v10

    return-wide v10

    :catch_0
    move-exception v1

    goto :goto_1
.end method

.method private killBackgroundProcesses()V
    .locals 10

    iget-object v7, p0, Lcom/droidlogic/vitlauncher/MyRelativeLayout;->mContext:Landroid/content/Context;

    const-string/jumbo v8, "activity"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_1

    const/4 v2, 0x0

    :goto_0
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v7

    if-ge v2, v7, :cond_1

    const-wide/16 v8, 0x64

    :try_start_0
    invoke-static {v8, v9}, Ljava/lang/Thread;->sleep(J)V

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager$RunningAppProcessInfo;

    iget-object v6, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->pkgList:[Ljava/lang/String;

    iget v7, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    const/16 v8, 0x12c

    if-le v7, v8, :cond_0

    const/4 v3, 0x0

    :goto_1
    array-length v7, v6

    if-ge v3, v7, :cond_0

    aget-object v7, v6, v3

    invoke-virtual {v0, v7}, Landroid/app/ActivityManager;->killBackgroundProcesses(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/droidlogic/vitlauncher/MyRelativeLayout;->myHander:Landroid/os/Handler;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :catch_0
    move-exception v5

    invoke-virtual {v5}, Ljava/lang/InterruptedException;->printStackTrace()V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private memory_show()V
    .locals 7

    invoke-direct {p0}, Lcom/droidlogic/vitlauncher/MyRelativeLayout;->getAvailMemory()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/droidlogic/vitlauncher/MyRelativeLayout;->availMemory:J

    invoke-direct {p0}, Lcom/droidlogic/vitlauncher/MyRelativeLayout;->getTotalMemory()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/droidlogic/vitlauncher/MyRelativeLayout;->totalMemory:J

    iget-wide v2, p0, Lcom/droidlogic/vitlauncher/MyRelativeLayout;->totalMemory:J

    iget-wide v4, p0, Lcom/droidlogic/vitlauncher/MyRelativeLayout;->availMemory:J

    sub-long/2addr v2, v4

    long-to-double v2, v2

    const-wide/high16 v4, 0x4059000000000000L    # 100.0

    mul-double/2addr v2, v4

    iget-wide v4, p0, Lcom/droidlogic/vitlauncher/MyRelativeLayout;->totalMemory:J

    long-to-double v4, v4

    div-double/2addr v2, v4

    double-to-float v0, v2

    iget-object v1, p0, Lcom/droidlogic/vitlauncher/MyRelativeLayout;->memory_used:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "%.1f"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "%"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private setHoverView()V
    .locals 1

    iget-object v0, p0, Lcom/droidlogic/vitlauncher/MyRelativeLayout;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/droidlogic/vitlauncher/Launcher;

    invoke-virtual {v0}, Lcom/droidlogic/vitlauncher/Launcher;->getHoverView()Lcom/droidlogic/vitlauncher/HoverView;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/droidlogic/vitlauncher/HoverView;->setHover(Lcom/droidlogic/vitlauncher/MyRelativeLayout;)V

    return-void
.end method

.method private showSecondScreen(I)V
    .locals 2

    iget-object v0, p0, Lcom/droidlogic/vitlauncher/MyRelativeLayout;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/droidlogic/vitlauncher/Launcher;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/droidlogic/vitlauncher/Launcher;->setHomeViewVisible(Z)V

    iget-object v0, p0, Lcom/droidlogic/vitlauncher/MyRelativeLayout;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/droidlogic/vitlauncher/Launcher;

    invoke-virtual {v0, p1}, Lcom/droidlogic/vitlauncher/Launcher;->setShortcutScreen(I)V

    return-void
.end method


# virtual methods
.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 9

    const/4 v8, 0x3

    const/4 v4, -0x1

    const/4 v7, 0x5

    const/4 v6, 0x0

    const/4 v5, 0x1

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    :cond_0
    :goto_0
    :sswitch_0
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v3

    return v3

    :sswitch_1
    const-string/jumbo v3, "org.mozilla.firefox"

    invoke-virtual {p0, v3}, Lcom/droidlogic/vitlauncher/MyRelativeLayout;->startAPP(Ljava/lang/String;)V

    goto :goto_0

    :sswitch_2
    const/4 v3, 0x4

    invoke-direct {p0, v3}, Lcom/droidlogic/vitlauncher/MyRelativeLayout;->showSecondScreen(I)V

    goto :goto_0

    :sswitch_3
    invoke-direct {p0, v8}, Lcom/droidlogic/vitlauncher/MyRelativeLayout;->showSecondScreen(I)V

    goto :goto_0

    :sswitch_4
    invoke-direct {p0, v5}, Lcom/droidlogic/vitlauncher/MyRelativeLayout;->showSecondScreen(I)V

    return v5

    :sswitch_5
    invoke-direct {p0, v7}, Lcom/droidlogic/vitlauncher/MyRelativeLayout;->showSecondScreen(I)V

    goto :goto_0

    :sswitch_6
    iget v3, p0, Lcom/droidlogic/vitlauncher/MyRelativeLayout;->mNumber:I

    if-eq v3, v4, :cond_0

    iget v3, p0, Lcom/droidlogic/vitlauncher/MyRelativeLayout;->mNumber:I

    rem-int/lit8 v3, v3, 0x6

    if-nez v3, :cond_0

    iput-boolean v5, p0, Lcom/droidlogic/vitlauncher/MyRelativeLayout;->isSwitchAnimRunning:Z

    goto :goto_0

    :sswitch_7
    iget v3, p0, Lcom/droidlogic/vitlauncher/MyRelativeLayout;->mNumber:I

    if-eq v3, v4, :cond_0

    iget v3, p0, Lcom/droidlogic/vitlauncher/MyRelativeLayout;->mNumber:I

    rem-int/lit8 v3, v3, 0x6

    if-eq v3, v7, :cond_2

    iget v4, p0, Lcom/droidlogic/vitlauncher/MyRelativeLayout;->mNumber:I

    invoke-virtual {p0}, Lcom/droidlogic/vitlauncher/MyRelativeLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-ne v4, v3, :cond_0

    :cond_2
    iput-boolean v5, p0, Lcom/droidlogic/vitlauncher/MyRelativeLayout;->isSwitchAnimRunning:Z

    goto :goto_0

    :sswitch_8
    iget v3, p0, Lcom/droidlogic/vitlauncher/MyRelativeLayout;->mType:I

    const/4 v4, 0x7

    if-eq v3, v4, :cond_3

    iget-object v3, p0, Lcom/droidlogic/vitlauncher/MyRelativeLayout;->mContext:Landroid/content/Context;

    check-cast v3, Lcom/droidlogic/vitlauncher/Launcher;

    invoke-virtual {v3, p0}, Lcom/droidlogic/vitlauncher/Launcher;->saveHomeFocus(Landroid/view/View;)V

    :cond_3
    iget v3, p0, Lcom/droidlogic/vitlauncher/MyRelativeLayout;->mType:I

    packed-switch v3, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-direct {p0, v5}, Lcom/droidlogic/vitlauncher/MyRelativeLayout;->showSecondScreen(I)V

    return v5

    :pswitch_1
    const-string/jumbo v3, "com.android.vending"

    invoke-virtual {p0, v3}, Lcom/droidlogic/vitlauncher/MyRelativeLayout;->startAPP(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_2
    sget-object v3, Lcom/droidlogic/vitlauncher/Launcher;->memory_layout:Landroid/widget/RelativeLayout;

    invoke-virtual {v3, v6}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object v3, p0, Lcom/droidlogic/vitlauncher/MyRelativeLayout;->mContext:Landroid/content/Context;

    const v4, 0x7f040007

    invoke-static {v3, v4}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v3

    iput-object v3, p0, Lcom/droidlogic/vitlauncher/MyRelativeLayout;->operatingAnim:Landroid/view/animation/Animation;

    iget-object v3, p0, Lcom/droidlogic/vitlauncher/MyRelativeLayout;->operatingAnim:Landroid/view/animation/Animation;

    new-instance v4, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v4}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v3, v4}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    sget-object v3, Lcom/droidlogic/vitlauncher/Launcher;->memory_layout:Landroid/widget/RelativeLayout;

    const v4, 0x7f0a000d

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/droidlogic/vitlauncher/MyRelativeLayout;->memory_used:Landroid/widget/TextView;

    sget-object v3, Lcom/droidlogic/vitlauncher/Launcher;->memory_layout:Landroid/widget/RelativeLayout;

    const v4, 0x7f0a000e

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/droidlogic/vitlauncher/MyRelativeLayout;->memory_circle:Landroid/widget/ImageView;

    invoke-direct {p0}, Lcom/droidlogic/vitlauncher/MyRelativeLayout;->memory_show()V

    iget-object v3, p0, Lcom/droidlogic/vitlauncher/MyRelativeLayout;->memory_circle:Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/droidlogic/vitlauncher/MyRelativeLayout;->operatingAnim:Landroid/view/animation/Animation;

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    new-instance v3, Lcom/droidlogic/vitlauncher/MyRelativeLayout$killProcessesThread;

    invoke-direct {v3, p0}, Lcom/droidlogic/vitlauncher/MyRelativeLayout$killProcessesThread;-><init>(Lcom/droidlogic/vitlauncher/MyRelativeLayout;)V

    invoke-virtual {v3}, Lcom/droidlogic/vitlauncher/MyRelativeLayout$killProcessesThread;->start()V

    iget-object v3, p0, Lcom/droidlogic/vitlauncher/MyRelativeLayout;->operatingAnim:Landroid/view/animation/Animation;

    new-instance v4, Lcom/droidlogic/vitlauncher/MyRelativeLayout$2;

    invoke-direct {v4, p0}, Lcom/droidlogic/vitlauncher/MyRelativeLayout$2;-><init>(Lcom/droidlogic/vitlauncher/MyRelativeLayout;)V

    invoke-virtual {v3, v4}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    goto/16 :goto_0

    :pswitch_3
    const-string/jumbo v3, "org.xbmc.kodi"

    invoke-virtual {p0, v3}, Lcom/droidlogic/vitlauncher/MyRelativeLayout;->startAPP(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_4
    invoke-direct {p0, v8}, Lcom/droidlogic/vitlauncher/MyRelativeLayout;->showSecondScreen(I)V

    goto/16 :goto_0

    :pswitch_5
    const/4 v3, 0x4

    invoke-direct {p0, v3}, Lcom/droidlogic/vitlauncher/MyRelativeLayout;->showSecondScreen(I)V

    goto/16 :goto_0

    :pswitch_6
    invoke-direct {p0, v7}, Lcom/droidlogic/vitlauncher/MyRelativeLayout;->showSecondScreen(I)V

    goto/16 :goto_0

    :pswitch_7
    const-string/jumbo v3, "org.mozilla.firefox"

    invoke-virtual {p0, v3}, Lcom/droidlogic/vitlauncher/MyRelativeLayout;->startAPP(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_8
    iget-object v3, p0, Lcom/droidlogic/vitlauncher/MyRelativeLayout;->mIntent:Landroid/content/Intent;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/droidlogic/vitlauncher/MyRelativeLayout;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/droidlogic/vitlauncher/MyRelativeLayout;->mIntent:Landroid/content/Intent;

    invoke-virtual {v3, v4}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    iget-object v3, p0, Lcom/droidlogic/vitlauncher/MyRelativeLayout;->mIntent:Landroid/content/Intent;

    invoke-virtual {v3}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "com.android.tv.settings/com.android.tv.settings.MainSettings"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    sput-boolean v5, Lcom/droidlogic/vitlauncher/Launcher;->isLaunchingTvSettings:Z

    goto/16 :goto_0

    :pswitch_9
    iget-object v3, p0, Lcom/droidlogic/vitlauncher/MyRelativeLayout;->mIntent:Landroid/content/Intent;

    if-eqz v3, :cond_7
    iget-object v3, p0, Lcom/droidlogic/vitlauncher/MyRelativeLayout;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/droidlogic/vitlauncher/MyRelativeLayout;->mIntent:Landroid/content/Intent;

    invoke-virtual {v3, v4}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    :pswitch_10
    const-string/jumbo v3, "com.liskovsoft.videomanager"

    invoke-virtual {p0, v3}, Lcom/droidlogic/vitlauncher/MyRelativeLayout;->startAPP(Ljava/lang/String;)V

    goto :goto_0

    :cond_7
    iget-boolean v3, p0, Lcom/droidlogic/vitlauncher/MyRelativeLayout;->mIsAddButton:Z

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/droidlogic/vitlauncher/MyRelativeLayout;->mContext:Landroid/content/Context;

    check-cast v3, Lcom/droidlogic/vitlauncher/Launcher;

    invoke-virtual {v3, p0}, Lcom/droidlogic/vitlauncher/Launcher;->startCustomScreen(Landroid/view/View;)V

    goto/16 :goto_0

    :sswitch_data_0
    .sparse-switch
        0x13 -> :sswitch_0
        0x14 -> :sswitch_0
        0x15 -> :sswitch_6
        0x16 -> :sswitch_7
        0x17 -> :sswitch_8
        0x42 -> :sswitch_8
        0x12c -> :sswitch_2
        0x12d -> :sswitch_3
        0x12e -> :sswitch_4
        0x12f -> :sswitch_1
        0x130 -> :sswitch_5
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_9
        :pswitch_6
        :pswitch_1
        :pswitch_2
        :pswitch_10
    .end packed-switch
.end method

.method public getType()I
    .locals 1

    iget v0, p0, Lcom/droidlogic/vitlauncher/MyRelativeLayout;->mType:I

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 0

    invoke-super {p0}, Landroid/widget/RelativeLayout;->onAttachedToWindow()V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    invoke-super {p0}, Landroid/widget/RelativeLayout;->onDetachedFromWindow()V

    return-void
.end method

.method protected onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 9

    const v1, 0x3f88f5c3    # 1.07f

    const/high16 v2, 0x3f800000    # 1.0f

    const/high16 v6, 0x3f000000    # 0.5f

    const/4 v5, 0x1

    if-eqz p1, :cond_1

    iget-boolean v1, p0, Lcom/droidlogic/vitlauncher/MyRelativeLayout;->layoutCompleted:Z

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/droidlogic/vitlauncher/MyRelativeLayout;->setHoverView()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    goto :goto_0
.end method

.method public onGlobalLayout()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/droidlogic/vitlauncher/MyRelativeLayout;->layoutCompleted:Z

    invoke-virtual {p0}, Lcom/droidlogic/vitlauncher/MyRelativeLayout;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/droidlogic/vitlauncher/MyRelativeLayout;->setHoverView()V

    :cond_0
    invoke-virtual {p0}, Lcom/droidlogic/vitlauncher/MyRelativeLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    invoke-super/range {p0 .. p5}, Landroid/widget/RelativeLayout;->onLayout(ZIIII)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    return v3

    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-ne v2, v3, :cond_0

    iget v2, p0, Lcom/droidlogic/vitlauncher/MyRelativeLayout;->mType:I

    packed-switch v2, :pswitch_data_0

    :cond_2
    :goto_0
    return v4

    :pswitch_0
    invoke-direct {p0, v3}, Lcom/droidlogic/vitlauncher/MyRelativeLayout;->showSecondScreen(I)V

    return v3

    :pswitch_1
    sget-object v2, Lcom/droidlogic/vitlauncher/Launcher;->memory_layout:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object v2, p0, Lcom/droidlogic/vitlauncher/MyRelativeLayout;->mContext:Landroid/content/Context;

    const v3, 0x7f040007

    invoke-static {v2, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v2

    iput-object v2, p0, Lcom/droidlogic/vitlauncher/MyRelativeLayout;->operatingAnim:Landroid/view/animation/Animation;

    iget-object v2, p0, Lcom/droidlogic/vitlauncher/MyRelativeLayout;->operatingAnim:Landroid/view/animation/Animation;

    new-instance v3, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v3}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v2, v3}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    sget-object v2, Lcom/droidlogic/vitlauncher/Launcher;->memory_layout:Landroid/widget/RelativeLayout;

    const v3, 0x7f0a000d

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/droidlogic/vitlauncher/MyRelativeLayout;->memory_used:Landroid/widget/TextView;

    sget-object v2, Lcom/droidlogic/vitlauncher/Launcher;->memory_layout:Landroid/widget/RelativeLayout;

    const v3, 0x7f0a000e

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/droidlogic/vitlauncher/MyRelativeLayout;->memory_circle:Landroid/widget/ImageView;

    invoke-direct {p0}, Lcom/droidlogic/vitlauncher/MyRelativeLayout;->memory_show()V

    iget-object v2, p0, Lcom/droidlogic/vitlauncher/MyRelativeLayout;->memory_circle:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/droidlogic/vitlauncher/MyRelativeLayout;->operatingAnim:Landroid/view/animation/Animation;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    new-instance v2, Lcom/droidlogic/vitlauncher/MyRelativeLayout$killProcessesThread;

    invoke-direct {v2, p0}, Lcom/droidlogic/vitlauncher/MyRelativeLayout$killProcessesThread;-><init>(Lcom/droidlogic/vitlauncher/MyRelativeLayout;)V

    invoke-virtual {v2}, Lcom/droidlogic/vitlauncher/MyRelativeLayout$killProcessesThread;->start()V

    iget-object v2, p0, Lcom/droidlogic/vitlauncher/MyRelativeLayout;->operatingAnim:Landroid/view/animation/Animation;

    new-instance v3, Lcom/droidlogic/vitlauncher/MyRelativeLayout$3;

    invoke-direct {v3, p0}, Lcom/droidlogic/vitlauncher/MyRelativeLayout$3;-><init>(Lcom/droidlogic/vitlauncher/MyRelativeLayout;)V

    invoke-virtual {v2, v3}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    goto :goto_0

    :pswitch_2
    const-string/jumbo v2, "com.android.vending"

    invoke-virtual {p0, v2}, Lcom/droidlogic/vitlauncher/MyRelativeLayout;->startAPP(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_3
    const-string/jumbo v2, "org.xbmc.kodi"

    invoke-virtual {p0, v2}, Lcom/droidlogic/vitlauncher/MyRelativeLayout;->startAPP(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_4
    const/4 v2, 0x5

    invoke-direct {p0, v2}, Lcom/droidlogic/vitlauncher/MyRelativeLayout;->showSecondScreen(I)V

    goto :goto_0

    :pswitch_5
    const/4 v2, 0x3

    invoke-direct {p0, v2}, Lcom/droidlogic/vitlauncher/MyRelativeLayout;->showSecondScreen(I)V

    goto :goto_0

    :pswitch_6
    const/4 v2, 0x4

    invoke-direct {p0, v2}, Lcom/droidlogic/vitlauncher/MyRelativeLayout;->showSecondScreen(I)V

    goto/16 :goto_0

    :pswitch_7
    const-string/jumbo v2, "org.mozilla.firefox"

    invoke-virtual {p0, v2}, Lcom/droidlogic/vitlauncher/MyRelativeLayout;->startAPP(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_8
    iget-object v2, p0, Lcom/droidlogic/vitlauncher/MyRelativeLayout;->mIntent:Landroid/content/Intent;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/droidlogic/vitlauncher/MyRelativeLayout;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/droidlogic/vitlauncher/MyRelativeLayout;->mIntent:Landroid/content/Intent;

    invoke-virtual {v2, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    :pswitch_9
    iget-object v2, p0, Lcom/droidlogic/vitlauncher/MyRelativeLayout;->mIntent:Landroid/content/Intent;

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/droidlogic/vitlauncher/MyRelativeLayout;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/droidlogic/vitlauncher/MyRelativeLayout;->mIntent:Landroid/content/Intent;

    invoke-virtual {v2, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    :pswitch_10
    const-string/jumbo v2, "com.liskovsoft.videomanager"

    invoke-virtual {p0, v2}, Lcom/droidlogic/vitlauncher/MyRelativeLayout;->startAPP(Ljava/lang/String;)V

    goto :goto_0

    :cond_6
    iget-boolean v2, p0, Lcom/droidlogic/vitlauncher/MyRelativeLayout;->mIsAddButton:Z

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/droidlogic/vitlauncher/MyRelativeLayout;->mContext:Landroid/content/Context;

    check-cast v2, Lcom/droidlogic/vitlauncher/Launcher;

    invoke-virtual {v2, p0}, Lcom/droidlogic/vitlauncher/Launcher;->startCustomScreen(Landroid/view/View;)V

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_3
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_9
        :pswitch_4
        :pswitch_2
        :pswitch_1
        :pswitch_10
    .end packed-switch
.end method

.method public setAddButton(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/droidlogic/vitlauncher/MyRelativeLayout;->mIsAddButton:Z

    return-void
.end method

.method public setIntent(Landroid/content/Intent;)V
    .locals 0

    iput-object p1, p0, Lcom/droidlogic/vitlauncher/MyRelativeLayout;->mIntent:Landroid/content/Intent;

    return-void
.end method

.method public setNumber(I)V
    .locals 0

    iput p1, p0, Lcom/droidlogic/vitlauncher/MyRelativeLayout;->mNumber:I

    return-void
.end method

.method public setType(I)V
    .locals 3

    iput p1, p0, Lcom/droidlogic/vitlauncher/MyRelativeLayout;->mType:I

    return-void
.end method

.method public startAPP(Ljava/lang/String;)V
    .locals 5

    :try_start_0
    iget-object v2, p0, Lcom/droidlogic/vitlauncher/MyRelativeLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    iget-object v2, p0, Lcom/droidlogic/vitlauncher/MyRelativeLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    iget-object v2, p0, Lcom/droidlogic/vitlauncher/MyRelativeLayout;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/droidlogic/vitlauncher/MyRelativeLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v5, 0x7f080003

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method
