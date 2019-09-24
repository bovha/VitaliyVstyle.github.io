.class public Lcom/droidlogic/vitlauncher/Launcher;
.super Landroid/app/Activity;
.source "Launcher.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/droidlogic/vitlauncher/Launcher$1;,
        Lcom/droidlogic/vitlauncher/Launcher$2;,
        Lcom/droidlogic/vitlauncher/Launcher$3;,
        Lcom/droidlogic/vitlauncher/Launcher$4;,
        Lcom/droidlogic/vitlauncher/Launcher$5;
    }
.end annotation


# static fields

.field public static COMPONENT_TV_SETTINGS:Ljava/lang/String;

.field public static HOME_SHORTCUT_COUNT:I

.field public static endX:F

.field public static isLaunchingTvSettings:Z

.field public static memory_layout:Landroid/widget/RelativeLayout;

.field private static scale_value:F

.field public static startX:F


# instance fields
.field private BtReceiver:Landroid/content/BroadcastReceiver;

.field private appReceiver:Landroid/content/BroadcastReceiver;

.field private current_screen_mode:I

.field private lv_status:Landroid/widget/GridView;

.field private mAppDataLoader:Lcom/droidlogic/vitlauncher/AppDataLoader;

.field private mAppView:Lcom/droidlogic/vitlauncher/MyRelativeLayout;

.field private mCleanView:Lcom/droidlogic/vitlauncher/MyRelativeLayout;

.field private mCustomView:Lcom/droidlogic/vitlauncher/CustomView;

.field private mGooglePlayView:Lcom/droidlogic/vitlauncher/MyRelativeLayout;

.field private mHandler:Landroid/os/Handler;

.field private mHomeShortcutView:Lcom/droidlogic/vitlauncher/MyGridLayout;

.field private mHomeView:Landroid/view/ViewGroup;

.field private mHoverView:Lcom/droidlogic/vitlauncher/HoverView;

.field private mLocalView:Lcom/droidlogic/vitlauncher/MyRelativeLayout;

.field private mMusicView:Lcom/droidlogic/vitlauncher/MyRelativeLayout;

.field private mSecondScreen:Lcom/droidlogic/vitlauncher/AppLayout;

.field private mSettingsView:Lcom/droidlogic/vitlauncher/MyRelativeLayout;

.field private mStatusLoader:Lcom/droidlogic/vitlauncher/StatusLoader;

.field private mVideoView:Lcom/droidlogic/vitlauncher/MyRelativeLayout;

.field private mWebView:Lcom/droidlogic/vitlauncher/MyRelativeLayout;

.field private mWindowManager:Landroid/view/IWindowManager;

.field private mKodiView:Lcom/droidlogic/vitlauncher/MyRelativeLayout;

.field private mYoutubeView:Lcom/droidlogic/vitlauncher/MyRelativeLayout;

.field private mediaReceiver:Landroid/content/BroadcastReceiver;

.field private mlock:Ljava/lang/Object;

.field private netReceiver:Landroid/content/BroadcastReceiver;

.field private final net_change_action:Ljava/lang/String;

.field private final outputmode_change_action:Ljava/lang/String;

.field private saveHomeFocusView:Landroid/view/View;

.field private saveModeBeforeCustom:I

.field private final wifi_signal_action:Ljava/lang/String;


# direct methods
.method static synthetic -get0(Lcom/droidlogic/vitlauncher/Launcher;)I
    .locals 1

    iget v0, p0, Lcom/droidlogic/vitlauncher/Launcher;->current_screen_mode:I

    return v0
.end method

.method static synthetic -wrap3(Lcom/droidlogic/vitlauncher/Launcher;)V
    .locals 0

    invoke-direct {p0}, Lcom/droidlogic/vitlauncher/Launcher;->displayDate()V

    return-void
.end method

.method static synthetic -wrap4(Lcom/droidlogic/vitlauncher/Launcher;)V
    .locals 0

    invoke-direct {p0}, Lcom/droidlogic/vitlauncher/Launcher;->displayStatus()V

    return-void
.end method

.method static synthetic -wrap7(Lcom/droidlogic/vitlauncher/Launcher;Landroid/content/Intent;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/droidlogic/vitlauncher/Launcher;->updateAppList(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic -wrap8(Lcom/droidlogic/vitlauncher/Launcher;)V
    .locals 0

    invoke-direct {p0}, Lcom/droidlogic/vitlauncher/Launcher;->updateStatus()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x5

    const/4 v3, 0x4

    const/4 v2, 0x3

    const/4 v1, 0x0

    const-string/jumbo v0, "com.android.tv.settings/com.android.tv.settings.MainSettings"

    sput-object v0, Lcom/droidlogic/vitlauncher/Launcher;->COMPONENT_TV_SETTINGS:Ljava/lang/String;

    sput-boolean v1, Lcom/droidlogic/vitlauncher/Launcher;->isLaunchingTvSettings:Z

    const/16 v0, 0xb

    sput v0, Lcom/droidlogic/vitlauncher/Launcher;->HOME_SHORTCUT_COUNT:I

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    const/4 v3, -0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const-string/jumbo v0, "android.net.conn.CONNECTIVITY_CHANGE"

    iput-object v0, p0, Lcom/droidlogic/vitlauncher/Launcher;->net_change_action:Ljava/lang/String;

    const-string/jumbo v0, "android.net.wifi.RSSI_CHANGED"

    iput-object v0, p0, Lcom/droidlogic/vitlauncher/Launcher;->wifi_signal_action:Ljava/lang/String;

    const-string/jumbo v0, "android.amlogic.settings.CHANGE_OUTPUT_MODE"

    iput-object v0, p0, Lcom/droidlogic/vitlauncher/Launcher;->outputmode_change_action:Ljava/lang/String;

    iput v2, p0, Lcom/droidlogic/vitlauncher/Launcher;->current_screen_mode:I

    iput v2, p0, Lcom/droidlogic/vitlauncher/Launcher;->saveModeBeforeCustom:I

    iput-object v1, p0, Lcom/droidlogic/vitlauncher/Launcher;->mHomeView:Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/droidlogic/vitlauncher/Launcher;->mSecondScreen:Lcom/droidlogic/vitlauncher/AppLayout;

    iput-object v1, p0, Lcom/droidlogic/vitlauncher/Launcher;->saveHomeFocusView:Landroid/view/View;

    iput-object v1, p0, Lcom/droidlogic/vitlauncher/Launcher;->mHomeShortcutView:Lcom/droidlogic/vitlauncher/MyGridLayout;

    iput-object v1, p0, Lcom/droidlogic/vitlauncher/Launcher;->mCustomView:Lcom/droidlogic/vitlauncher/CustomView;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/droidlogic/vitlauncher/Launcher;->mlock:Ljava/lang/Object;

    new-instance v0, Lcom/droidlogic/vitlauncher/Launcher$1;

    invoke-direct {v0, p0}, Lcom/droidlogic/vitlauncher/Launcher$1;-><init>(Lcom/droidlogic/vitlauncher/Launcher;)V

    iput-object v0, p0, Lcom/droidlogic/vitlauncher/Launcher;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/droidlogic/vitlauncher/Launcher$2;

    invoke-direct {v0, p0}, Lcom/droidlogic/vitlauncher/Launcher$2;-><init>(Lcom/droidlogic/vitlauncher/Launcher;)V

    iput-object v0, p0, Lcom/droidlogic/vitlauncher/Launcher;->BtReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/droidlogic/vitlauncher/Launcher$3;

    invoke-direct {v0, p0}, Lcom/droidlogic/vitlauncher/Launcher$3;-><init>(Lcom/droidlogic/vitlauncher/Launcher;)V

    iput-object v0, p0, Lcom/droidlogic/vitlauncher/Launcher;->mediaReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/droidlogic/vitlauncher/Launcher$4;

    invoke-direct {v0, p0}, Lcom/droidlogic/vitlauncher/Launcher$4;-><init>(Lcom/droidlogic/vitlauncher/Launcher;)V

    iput-object v0, p0, Lcom/droidlogic/vitlauncher/Launcher;->netReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/droidlogic/vitlauncher/Launcher$5;

    invoke-direct {v0, p0}, Lcom/droidlogic/vitlauncher/Launcher$5;-><init>(Lcom/droidlogic/vitlauncher/Launcher;)V

    iput-object v0, p0, Lcom/droidlogic/vitlauncher/Launcher;->appReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method public static dipToPx(Landroid/content/Context;F)I
    .locals 3

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v0, v1, Landroid/util/DisplayMetrics;->density:F

    mul-float v1, p1, v0

    const/high16 v2, 0x3f000000    # 0.5f

    add-float/2addr v1, v2

    float-to-int v1, v1

    return v1
.end method

.method private displayDate()V
    .locals 6

    const v4, 0x7f0a002a

    invoke-virtual {p0, v4}, Lcom/droidlogic/vitlauncher/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const v4, 0x7f0a002b

    invoke-virtual {p0, v4}, Lcom/droidlogic/vitlauncher/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/droidlogic/vitlauncher/Launcher;->mStatusLoader:Lcom/droidlogic/vitlauncher/StatusLoader;

    invoke-virtual {v5}, Lcom/droidlogic/vitlauncher/StatusLoader;->getTime()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v4, p0, Lcom/droidlogic/vitlauncher/Launcher;->mStatusLoader:Lcom/droidlogic/vitlauncher/StatusLoader;

    invoke-virtual {v4}, Lcom/droidlogic/vitlauncher/StatusLoader;->getDate()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

.end method

.method private displayStatus()V
    .locals 6

    const/4 v5, 0x1

    const/4 v3, 0x0

    new-instance v0, Lcom/droidlogic/vitlauncher/LocalAdapter;

    iget-object v1, p0, Lcom/droidlogic/vitlauncher/Launcher;->mStatusLoader:Lcom/droidlogic/vitlauncher/StatusLoader;

    invoke-virtual {v1}, Lcom/droidlogic/vitlauncher/StatusLoader;->getStatusData()Ljava/util/List;

    move-result-object v2

    new-array v4, v5, [Ljava/lang/String;

    const-string/jumbo v1, "item_icon"

    aput-object v1, v4, v3

    new-array v5, v5, [I

    const v1, 0x7f0a0002

    aput v1, v5, v3

    const v3, 0x7f030004

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/droidlogic/vitlauncher/LocalAdapter;-><init>(Landroid/content/Context;Ljava/util/List;I[Ljava/lang/String;[I)V

    iget-object v1, p0, Lcom/droidlogic/vitlauncher/Launcher;->lv_status:Landroid/widget/GridView;

    invoke-virtual {v1, v0}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method private getAnimationScaleValue()F
    .locals 4

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/droidlogic/vitlauncher/Launcher;->mWindowManager:Landroid/view/IWindowManager;

    const/4 v3, 0x1

    invoke-interface {v2, v3}, Landroid/view/IWindowManager;->getAnimationScale(I)F
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private initChildViews()V
    .locals 2

    const/16 v1, 0x8

    const v0, 0x7f0a0032

    invoke-virtual {p0, v0}, Lcom/droidlogic/vitlauncher/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/GridView;

    iput-object v0, p0, Lcom/droidlogic/vitlauncher/Launcher;->lv_status:Landroid/widget/GridView;

    const v0, 0x7f0a003a

    invoke-virtual {p0, v0}, Lcom/droidlogic/vitlauncher/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/droidlogic/vitlauncher/HoverView;

    iput-object v0, p0, Lcom/droidlogic/vitlauncher/Launcher;->mHoverView:Lcom/droidlogic/vitlauncher/HoverView;

    const v0, 0x7f0a0038

    invoke-virtual {p0, v0}, Lcom/droidlogic/vitlauncher/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/droidlogic/vitlauncher/Launcher;->mHomeView:Landroid/view/ViewGroup;

    const v0, 0x7f0a0039

    invoke-virtual {p0, v0}, Lcom/droidlogic/vitlauncher/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/droidlogic/vitlauncher/AppLayout;

    iput-object v0, p0, Lcom/droidlogic/vitlauncher/Launcher;->mSecondScreen:Lcom/droidlogic/vitlauncher/AppLayout;

    const v0, 0x7f0a0031

    invoke-virtual {p0, v0}, Lcom/droidlogic/vitlauncher/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/droidlogic/vitlauncher/MyGridLayout;

    iput-object v0, p0, Lcom/droidlogic/vitlauncher/Launcher;->mHomeShortcutView:Lcom/droidlogic/vitlauncher/MyGridLayout;

    const v0, 0x7f0a0023

    invoke-virtual {p0, v0}, Lcom/droidlogic/vitlauncher/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/droidlogic/vitlauncher/MyRelativeLayout;

    iput-object v0, p0, Lcom/droidlogic/vitlauncher/Launcher;->mGooglePlayView:Lcom/droidlogic/vitlauncher/MyRelativeLayout;

    const v0, 0x7f0a0010

    invoke-virtual {p0, v0}, Lcom/droidlogic/vitlauncher/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/droidlogic/vitlauncher/MyRelativeLayout;

    iput-object v0, p0, Lcom/droidlogic/vitlauncher/Launcher;->mVideoView:Lcom/droidlogic/vitlauncher/MyRelativeLayout;

    const v0, 0x7f0a0024

    invoke-virtual {p0, v0}, Lcom/droidlogic/vitlauncher/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/droidlogic/vitlauncher/MyRelativeLayout;

    iput-object v0, p0, Lcom/droidlogic/vitlauncher/Launcher;->mKodiView:Lcom/droidlogic/vitlauncher/MyRelativeLayout;

    const v0, 0x7f0a0013

    invoke-virtual {p0, v0}, Lcom/droidlogic/vitlauncher/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/droidlogic/vitlauncher/MyRelativeLayout;

    iput-object v0, p0, Lcom/droidlogic/vitlauncher/Launcher;->mYoutubeView:Lcom/droidlogic/vitlauncher/MyRelativeLayout;

    const v0, 0x7f0a0016

    invoke-virtual {p0, v0}, Lcom/droidlogic/vitlauncher/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/droidlogic/vitlauncher/MyRelativeLayout;

    iput-object v0, p0, Lcom/droidlogic/vitlauncher/Launcher;->mMusicView:Lcom/droidlogic/vitlauncher/MyRelativeLayout;

    const v0, 0x7f0a0019

    invoke-virtual {p0, v0}, Lcom/droidlogic/vitlauncher/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/droidlogic/vitlauncher/MyRelativeLayout;

    iput-object v0, p0, Lcom/droidlogic/vitlauncher/Launcher;->mAppView:Lcom/droidlogic/vitlauncher/MyRelativeLayout;

    const v0, 0x7f0a001c

    invoke-virtual {p0, v0}, Lcom/droidlogic/vitlauncher/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/droidlogic/vitlauncher/MyRelativeLayout;

    iput-object v0, p0, Lcom/droidlogic/vitlauncher/Launcher;->mLocalView:Lcom/droidlogic/vitlauncher/MyRelativeLayout;

    const v0, 0x7f0a0027

    invoke-virtual {p0, v0}, Lcom/droidlogic/vitlauncher/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/droidlogic/vitlauncher/MyRelativeLayout;

    iput-object v0, p0, Lcom/droidlogic/vitlauncher/Launcher;->mWebView:Lcom/droidlogic/vitlauncher/MyRelativeLayout;

    const v0, 0x7f0a0022

    invoke-virtual {p0, v0}, Lcom/droidlogic/vitlauncher/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/droidlogic/vitlauncher/MyRelativeLayout;

    iput-object v0, p0, Lcom/droidlogic/vitlauncher/Launcher;->mCleanView:Lcom/droidlogic/vitlauncher/MyRelativeLayout;

    const v0, 0x7f0a001f

    invoke-virtual {p0, v0}, Lcom/droidlogic/vitlauncher/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/droidlogic/vitlauncher/MyRelativeLayout;

    iput-object v0, p0, Lcom/droidlogic/vitlauncher/Launcher;->mSettingsView:Lcom/droidlogic/vitlauncher/MyRelativeLayout;

    invoke-direct {p0}, Lcom/droidlogic/vitlauncher/Launcher;->setHomeRectType()V

    const v0, 0x7f0a000c

    invoke-virtual {p0, v0}, Lcom/droidlogic/vitlauncher/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    sput-object v0, Lcom/droidlogic/vitlauncher/Launcher;->memory_layout:Landroid/widget/RelativeLayout;

    sget-object v0, Lcom/droidlogic/vitlauncher/Launcher;->memory_layout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    return-void
.end method

.method private setHomeRectType()V
    .locals 3

    iget-object v1, p0, Lcom/droidlogic/vitlauncher/Launcher;->mGooglePlayView:Lcom/droidlogic/vitlauncher/MyRelativeLayout;

    const/16 v2, 0x9

    invoke-virtual {v1, v2}, Lcom/droidlogic/vitlauncher/MyRelativeLayout;->setType(I)V

    iget-object v1, p0, Lcom/droidlogic/vitlauncher/Launcher;->mVideoView:Lcom/droidlogic/vitlauncher/MyRelativeLayout;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/droidlogic/vitlauncher/MyRelativeLayout;->setType(I)V

    iget-object v1, p0, Lcom/droidlogic/vitlauncher/Launcher;->mMusicView:Lcom/droidlogic/vitlauncher/MyRelativeLayout;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/droidlogic/vitlauncher/MyRelativeLayout;->setType(I)V

    iget-object v1, p0, Lcom/droidlogic/vitlauncher/Launcher;->mKodiView:Lcom/droidlogic/vitlauncher/MyRelativeLayout;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/droidlogic/vitlauncher/MyRelativeLayout;->setType(I)V

    iget-object v1, p0, Lcom/droidlogic/vitlauncher/Launcher;->mYoutubeView:Lcom/droidlogic/vitlauncher/MyRelativeLayout;

    const/16 v2, 0xb

    invoke-virtual {v1, v2}, Lcom/droidlogic/vitlauncher/MyRelativeLayout;->setType(I)V

    iget-object v1, p0, Lcom/droidlogic/vitlauncher/Launcher;->mAppView:Lcom/droidlogic/vitlauncher/MyRelativeLayout;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lcom/droidlogic/vitlauncher/MyRelativeLayout;->setType(I)V

    iget-object v1, p0, Lcom/droidlogic/vitlauncher/Launcher;->mLocalView:Lcom/droidlogic/vitlauncher/MyRelativeLayout;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/droidlogic/vitlauncher/MyRelativeLayout;->setType(I)V

    iget-object v1, p0, Lcom/droidlogic/vitlauncher/Launcher;->mWebView:Lcom/droidlogic/vitlauncher/MyRelativeLayout;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/droidlogic/vitlauncher/MyRelativeLayout;->setType(I)V

    iget-object v1, p0, Lcom/droidlogic/vitlauncher/Launcher;->mCleanView:Lcom/droidlogic/vitlauncher/MyRelativeLayout;

    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Lcom/droidlogic/vitlauncher/MyRelativeLayout;->setType(I)V

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    sget-object v1, Lcom/droidlogic/vitlauncher/Launcher;->COMPONENT_TV_SETTINGS:Ljava/lang/String;

    invoke-static {v1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/droidlogic/vitlauncher/Launcher;->mSettingsView:Lcom/droidlogic/vitlauncher/MyRelativeLayout;

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Lcom/droidlogic/vitlauncher/MyRelativeLayout;->setType(I)V

    iget-object v1, p0, Lcom/droidlogic/vitlauncher/Launcher;->mSettingsView:Lcom/droidlogic/vitlauncher/MyRelativeLayout;

    invoke-virtual {v1, v0}, Lcom/droidlogic/vitlauncher/MyRelativeLayout;->setIntent(Landroid/content/Intent;)V

    return-void
.end method

.method private updateAppList(Landroid/content/Intent;)V
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    return-void

    :cond_1
    const-string/jumbo v2, "com.android.provision"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    return-void

    :cond_2
    invoke-virtual {p0}, Lcom/droidlogic/vitlauncher/Launcher;->displayShortcuts()V

    return-void
.end method

.method private updateStatus()V
    .locals 1

    iget-object v0, p0, Lcom/droidlogic/vitlauncher/Launcher;->lv_status:Landroid/widget/GridView;

    invoke-virtual {v0}, Landroid/widget/GridView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Landroid/widget/BaseAdapter;

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    return-void
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    sput v0, Lcom/droidlogic/vitlauncher/Launcher;->startX:F

    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    sput v0, Lcom/droidlogic/vitlauncher/Launcher;->endX:F

    goto :goto_0
.end method

.method public displayShortcuts()V
    .locals 1

    iget-object v0, p0, Lcom/droidlogic/vitlauncher/Launcher;->mAppDataLoader:Lcom/droidlogic/vitlauncher/AppDataLoader;

    invoke-virtual {v0}, Lcom/droidlogic/vitlauncher/AppDataLoader;->update()V

    iget v0, p0, Lcom/droidlogic/vitlauncher/Launcher;->current_screen_mode:I

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    iget v0, p0, Lcom/droidlogic/vitlauncher/Launcher;->saveModeBeforeCustom:I

    invoke-virtual {p0, v0}, Lcom/droidlogic/vitlauncher/Launcher;->setShortcutScreen(I)V

    :goto_0
    return-void

    :pswitch_1
    iget v0, p0, Lcom/droidlogic/vitlauncher/Launcher;->current_screen_mode:I

    invoke-virtual {p0, v0}, Lcom/droidlogic/vitlauncher/Launcher;->setShortcutScreen(I)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public getAppDataLoader()Lcom/droidlogic/vitlauncher/AppDataLoader;
    .locals 1

    iget-object v0, p0, Lcom/droidlogic/vitlauncher/Launcher;->mAppDataLoader:Lcom/droidlogic/vitlauncher/AppDataLoader;

    return-object v0
.end method

.method public getCurrentScreenMode()I
    .locals 1

    iget v0, p0, Lcom/droidlogic/vitlauncher/Launcher;->current_screen_mode:I

    return v0
.end method

.method public getHoverView()Lcom/droidlogic/vitlauncher/HoverView;
    .locals 1

    iget-object v0, p0, Lcom/droidlogic/vitlauncher/Launcher;->mHoverView:Lcom/droidlogic/vitlauncher/HoverView;

    return-object v0
.end method

.method public getLock()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/droidlogic/vitlauncher/Launcher;->mlock:Ljava/lang/Object;

    return-object v0
.end method

.method public getMainView()Landroid/view/ViewGroup;
    .locals 1

    const v0, 0x7f0a0037

    invoke-virtual {p0, v0}, Lcom/droidlogic/vitlauncher/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    return-object v0
.end method

.method public getRootView()Landroid/view/ViewGroup;
    .locals 1

    const v0, 0x7f0a0036

    invoke-virtual {p0, v0}, Lcom/droidlogic/vitlauncher/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 7

    const/4 v6, 0x0

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const v3, 0x7f03000c

    invoke-virtual {p0, v3}, Lcom/droidlogic/vitlauncher/Launcher;->setContentView(I)V

    const-string/jumbo v3, "persist.sys.firstRun"

    const-string/jumbo v4, "1"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/droidlogic/vitlauncher/DesUtils;->isAmlogicChip()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {p0}, Lcom/droidlogic/vitlauncher/Launcher;->finish()V

    :cond_0
    new-instance v3, Lcom/droidlogic/vitlauncher/AppDataLoader;

    invoke-direct {v3, p0}, Lcom/droidlogic/vitlauncher/AppDataLoader;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/droidlogic/vitlauncher/Launcher;->mAppDataLoader:Lcom/droidlogic/vitlauncher/AppDataLoader;

    new-instance v3, Lcom/droidlogic/vitlauncher/StatusLoader;

    invoke-direct {v3, p0}, Lcom/droidlogic/vitlauncher/StatusLoader;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/droidlogic/vitlauncher/Launcher;->mStatusLoader:Lcom/droidlogic/vitlauncher/StatusLoader;

    const-string/jumbo v3, "window"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v3

    iput-object v3, p0, Lcom/droidlogic/vitlauncher/Launcher;->mWindowManager:Landroid/view/IWindowManager;

    invoke-direct {p0}, Lcom/droidlogic/vitlauncher/Launcher;->getAnimationScaleValue()F

    move-result v3

    sput v3, Lcom/droidlogic/vitlauncher/Launcher;->scale_value:F

    iget-object v3, p0, Lcom/droidlogic/vitlauncher/Launcher;->mAppDataLoader:Lcom/droidlogic/vitlauncher/AppDataLoader;

    invoke-virtual {v3}, Lcom/droidlogic/vitlauncher/AppDataLoader;->update()V

    invoke-direct {p0}, Lcom/droidlogic/vitlauncher/Launcher;->initChildViews()V

    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v3, "android.intent.action.MEDIA_EJECT"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v3, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v3, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v3, "file"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/droidlogic/vitlauncher/Launcher;->mediaReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v3, v1}, Lcom/droidlogic/vitlauncher/Launcher;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v3, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/droidlogic/vitlauncher/Launcher;->BtReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v3, v1}, Lcom/droidlogic/vitlauncher/Launcher;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v3, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v3, "android.net.wifi.RSSI_CHANGED"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v3, "android.intent.action.TIME_TICK"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v3, "android.intent.action.TIME_SET"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v3, "android.amlogic.settings.CHANGE_OUTPUT_MODE"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v3, "android.intent.action.EXTERNAL_APPLICATIONS_AVAILABLE"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v3, "android.intent.action.EXTERNAL_APPLICATIONS_UNAVAILABLE"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/droidlogic/vitlauncher/Launcher;->netReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v3, v1}, Lcom/droidlogic/vitlauncher/Launcher;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    new-instance v1, Landroid/content/IntentFilter;

    const-string/jumbo v3, "android.intent.action.PACKAGE_ADDED"

    invoke-direct {v1, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string/jumbo v3, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v3, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v3, "package"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/droidlogic/vitlauncher/Launcher;->appReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v3, v1}, Lcom/droidlogic/vitlauncher/Launcher;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    iget-object v0, p0, Lcom/droidlogic/vitlauncher/Launcher;->mediaReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/droidlogic/vitlauncher/Launcher;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iget-object v0, p0, Lcom/droidlogic/vitlauncher/Launcher;->netReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/droidlogic/vitlauncher/Launcher;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iget-object v0, p0, Lcom/droidlogic/vitlauncher/Launcher;->appReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/droidlogic/vitlauncher/Launcher;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iget-object v0, p0, Lcom/droidlogic/vitlauncher/Launcher;->BtReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/droidlogic/vitlauncher/Launcher;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 8

    const/4 v7, 0x1

    const/4 v5, 0x4

    if-ne p1, v5, :cond_0

    iget v5, p0, Lcom/droidlogic/vitlauncher/Launcher;->current_screen_mode:I

    packed-switch v5, :pswitch_data_0

    :goto_0
    :pswitch_0
    return v7

    :pswitch_1
    iget-object v5, p0, Lcom/droidlogic/vitlauncher/Launcher;->mSecondScreen:Lcom/droidlogic/vitlauncher/AppLayout;

    invoke-virtual {v5}, Lcom/droidlogic/vitlauncher/AppLayout;->clearAnimation()V

    :pswitch_2
    invoke-virtual {p0, v7}, Lcom/droidlogic/vitlauncher/Launcher;->setHomeViewVisible(Z)V

    const v5, 0x7f0a0019

    invoke-virtual {p0, v5}, Lcom/droidlogic/vitlauncher/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/droidlogic/vitlauncher/MyRelativeLayout;

    invoke-virtual {v4}, Lcom/droidlogic/vitlauncher/MyRelativeLayout;->requestFocus()Z

    goto :goto_0

    :pswitch_3
    iget v5, p0, Lcom/droidlogic/vitlauncher/Launcher;->saveModeBeforeCustom:I

    iput v5, p0, Lcom/droidlogic/vitlauncher/Launcher;->current_screen_mode:I

    iget-object v5, p0, Lcom/droidlogic/vitlauncher/Launcher;->mAppDataLoader:Lcom/droidlogic/vitlauncher/AppDataLoader;

    invoke-virtual {v5}, Lcom/droidlogic/vitlauncher/AppDataLoader;->update()V

    goto :goto_0

    :cond_0
    const/16 v5, 0x17

    if-eq p1, v5, :cond_1

    const/16 v5, 0x42

    if-ne p1, v5, :cond_2

    :cond_1
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v5

    return v5

    :cond_2
    const/16 v5, 0x54

    if-ne p1, v5, :cond_1

    const-string/jumbo v5, "search"

    invoke-virtual {p0, v5}, Lcom/droidlogic/vitlauncher/Launcher;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/SearchManager;

    invoke-virtual {v3}, Landroid/app/SearchManager;->getGlobalSearchActivity()Landroid/content/ComponentName;

    move-result-object v1

    if-nez v1, :cond_3

    const/4 v5, 0x0

    return v5

    :cond_3
    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v5, "android.search.action.GLOBAL_SEARCH"

    invoke-direct {v2, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v5, 0x10000000

    invoke-virtual {v2, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {v2, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v5, "source"

    const-string/jumbo v6, "launcher-search"

    invoke-virtual {v0, v5, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v5, "app_data"

    invoke-virtual {v2, v5, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    invoke-virtual {p0, v2}, Lcom/droidlogic/vitlauncher/Launcher;->startActivity(Landroid/content/Intent;)V

    return v7

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    const-string/jumbo v1, "android.intent.action.MAIN"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/droidlogic/vitlauncher/Launcher;->setHomeViewVisible(Z)V

    const/4 v1, 0x0

    iput v1, p0, Lcom/droidlogic/vitlauncher/Launcher;->current_screen_mode:I

    const v1, 0x7f0a0019

    invoke-virtual {p0, v1}, Lcom/droidlogic/vitlauncher/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/droidlogic/vitlauncher/MyRelativeLayout;

    invoke-virtual {v0}, Lcom/droidlogic/vitlauncher/MyRelativeLayout;->requestFocus()Z

    :cond_0
    return-void
.end method

.method protected onPause()V
    .locals 3

    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    iget-object v0, p0, Lcom/droidlogic/vitlauncher/Launcher;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    sget-boolean v0, Lcom/droidlogic/vitlauncher/Launcher;->isLaunchingTvSettings:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/droidlogic/vitlauncher/Launcher;->onStop()V

    :cond_1
    return-void
.end method

.method protected onResume()V
    .locals 3

    const/4 v2, 0x0

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    invoke-virtual {p0}, Lcom/droidlogic/vitlauncher/Launcher;->displayShortcuts()V

    invoke-direct {p0}, Lcom/droidlogic/vitlauncher/Launcher;->displayStatus()V

    invoke-direct {p0}, Lcom/droidlogic/vitlauncher/Launcher;->displayDate()V

    return-void
.end method

.method protected onStop()V
    .locals 2

    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    const/4 v1, 0x1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v2, p0, Lcom/droidlogic/vitlauncher/Launcher;->mHoverView:Lcom/droidlogic/vitlauncher/HoverView;

    invoke-virtual {v2}, Lcom/droidlogic/vitlauncher/HoverView;->clear()V

    :cond_0
    return v1
.end method

.method public recoverFromCustom()V
    .locals 2

    iget-object v0, p0, Lcom/droidlogic/vitlauncher/Launcher;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    invoke-virtual {p0}, Lcom/droidlogic/vitlauncher/Launcher;->getMainView()Landroid/view/ViewGroup;

    move-result-object v0

    const/high16 v1, 0x40000

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setDescendantFocusability(I)V

    invoke-virtual {p0}, Lcom/droidlogic/vitlauncher/Launcher;->getMainView()Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->requestFocus()Z

    return-void
.end method

.method public resetShortcutScreen(I)V
    .locals 4

    const/4 v2, 0x0

    iget-object v1, p0, Lcom/droidlogic/vitlauncher/Launcher;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v1, p0, Lcom/droidlogic/vitlauncher/Launcher;->mAppDataLoader:Lcom/droidlogic/vitlauncher/AppDataLoader;

    invoke-virtual {v1}, Lcom/droidlogic/vitlauncher/AppDataLoader;->isDataLoaded()Z

    move-result v1

    if-eqz v1, :cond_1

    if-nez p1, :cond_0

    iget-object v1, p0, Lcom/droidlogic/vitlauncher/Launcher;->mHomeShortcutView:Lcom/droidlogic/vitlauncher/MyGridLayout;

    iget-object v2, p0, Lcom/droidlogic/vitlauncher/Launcher;->mAppDataLoader:Lcom/droidlogic/vitlauncher/AppDataLoader;

    invoke-virtual {v2, p1}, Lcom/droidlogic/vitlauncher/AppDataLoader;->getShortcutList(I)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Lcom/droidlogic/vitlauncher/MyGridLayout;->setLayoutView(ILjava/util/List;)V

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/droidlogic/vitlauncher/Launcher;->mSecondScreen:Lcom/droidlogic/vitlauncher/AppLayout;

    iget-object v2, p0, Lcom/droidlogic/vitlauncher/Launcher;->mAppDataLoader:Lcom/droidlogic/vitlauncher/AppDataLoader;

    invoke-virtual {v2, p1}, Lcom/droidlogic/vitlauncher/AppDataLoader;->getShortcutList(I)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Lcom/droidlogic/vitlauncher/AppLayout;->setLayout(ILjava/util/List;)V

    goto :goto_0

    :cond_1
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    iput v2, v0, Landroid/os/Message;->what:I

    iput p1, v0, Landroid/os/Message;->arg1:I

    iget-object v1, p0, Lcom/droidlogic/vitlauncher/Launcher;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x64

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0
.end method

.method public saveHomeFocus(Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/droidlogic/vitlauncher/Launcher;->saveHomeFocusView:Landroid/view/View;

    return-void
.end method

.method public setHomeViewVisible(Z)V
    .locals 4

    const/16 v3, 0x8

    const/4 v2, 0x0

    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/droidlogic/vitlauncher/Launcher;->mCustomView:Lcom/droidlogic/vitlauncher/CustomView;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/droidlogic/vitlauncher/Launcher;->current_screen_mode:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/droidlogic/vitlauncher/Launcher;->mCustomView:Lcom/droidlogic/vitlauncher/CustomView;

    invoke-virtual {v0}, Lcom/droidlogic/vitlauncher/CustomView;->recoverMainView()V

    :cond_0
    iput v2, p0, Lcom/droidlogic/vitlauncher/Launcher;->current_screen_mode:I

    iget-object v0, p0, Lcom/droidlogic/vitlauncher/Launcher;->mSecondScreen:Lcom/droidlogic/vitlauncher/AppLayout;

    invoke-virtual {v0, v3}, Lcom/droidlogic/vitlauncher/AppLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/droidlogic/vitlauncher/Launcher;->mHomeView:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lcom/droidlogic/vitlauncher/Launcher;->mHomeView:Landroid/view/ViewGroup;

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object v0, p0, Lcom/droidlogic/vitlauncher/Launcher;->mSecondScreen:Lcom/droidlogic/vitlauncher/AppLayout;

    invoke-virtual {v0, v2}, Lcom/droidlogic/vitlauncher/AppLayout;->setVisibility(I)V

    goto :goto_0
.end method

.method public setShortcutScreen(I)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/droidlogic/vitlauncher/Launcher;->resetShortcutScreen(I)V

    iput p1, p0, Lcom/droidlogic/vitlauncher/Launcher;->current_screen_mode:I

    return-void
.end method

.method public startCustomScreen(Landroid/view/View;)V
    .locals 6

    const/4 v5, 0x6

    const/4 v4, -0x2

    iget v2, p0, Lcom/droidlogic/vitlauncher/Launcher;->current_screen_mode:I

    if-ne v2, v5, :cond_0

    return-void

    :cond_0
    iget-object v2, p0, Lcom/droidlogic/vitlauncher/Launcher;->mHoverView:Lcom/droidlogic/vitlauncher/HoverView;

    invoke-virtual {v2}, Lcom/droidlogic/vitlauncher/HoverView;->clear()V

    iget v2, p0, Lcom/droidlogic/vitlauncher/Launcher;->current_screen_mode:I

    iput v2, p0, Lcom/droidlogic/vitlauncher/Launcher;->saveModeBeforeCustom:I

    new-instance v2, Lcom/droidlogic/vitlauncher/CustomView;

    iget v3, p0, Lcom/droidlogic/vitlauncher/Launcher;->current_screen_mode:I

    invoke-direct {v2, p0, p1, v3}, Lcom/droidlogic/vitlauncher/CustomView;-><init>(Landroid/content/Context;Landroid/view/View;I)V

    iput-object v2, p0, Lcom/droidlogic/vitlauncher/Launcher;->mCustomView:Lcom/droidlogic/vitlauncher/CustomView;

    iput v5, p0, Lcom/droidlogic/vitlauncher/Launcher;->current_screen_mode:I

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {p1, v1}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    iget v2, v1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0}, Lcom/droidlogic/vitlauncher/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->heightPixels:I

    div-int/lit8 v3, v3, 0x2

    if-le v2, v3, :cond_2

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v2, 0xc

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    invoke-virtual {p0}, Lcom/droidlogic/vitlauncher/Launcher;->getRootView()Landroid/view/ViewGroup;

    move-result-object v2

    iget-object v3, p0, Lcom/droidlogic/vitlauncher/Launcher;->mCustomView:Lcom/droidlogic/vitlauncher/CustomView;

    invoke-virtual {v2, v3, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :goto_0
    invoke-virtual {p0}, Lcom/droidlogic/vitlauncher/Launcher;->getMainView()Landroid/view/ViewGroup;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewGroup;->bringToFront()V

    return-void

    :cond_2
    invoke-virtual {p0}, Lcom/droidlogic/vitlauncher/Launcher;->getRootView()Landroid/view/ViewGroup;

    move-result-object v2

    iget-object v3, p0, Lcom/droidlogic/vitlauncher/Launcher;->mCustomView:Lcom/droidlogic/vitlauncher/CustomView;

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_0
.end method
