.class public Lcom/droidlogic/vitlauncher/CustomView;
.super Landroid/widget/FrameLayout;
.source "CustomView.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/droidlogic/vitlauncher/CustomView$mAnimatorListener;
    }
.end annotation


# static fields
.field private static allowAnimation:Z

.field static final mLock:Ljava/lang/Object;


# instance fields
.field private gv:Landroid/widget/GridView;

.field private homeShortcutCount:I

.field private img_dim:Landroid/widget/ImageView;

.field private img_screen_shot:Landroid/widget/ImageView;

.field private img_screen_shot_keep:Landroid/widget/ImageView;

.field private mContext:Landroid/content/Context;

.field private mMode:I

.field private mSource:Landroid/view/View;

.field private str_custom_apps:Ljava/lang/String;

.field private thisView:Lcom/droidlogic/vitlauncher/CustomView;

.field private transY:I


# direct methods
.method static synthetic -get0(Lcom/droidlogic/vitlauncher/CustomView;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/droidlogic/vitlauncher/CustomView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get1(Lcom/droidlogic/vitlauncher/CustomView;)Lcom/droidlogic/vitlauncher/CustomView;
    .locals 1

    iget-object v0, p0, Lcom/droidlogic/vitlauncher/CustomView;->thisView:Lcom/droidlogic/vitlauncher/CustomView;

    return-object v0
.end method

.method static synthetic -set0(Z)Z
    .locals 0

    sput-boolean p0, Lcom/droidlogic/vitlauncher/CustomView;->allowAnimation:Z

    return p0
.end method

.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x1

    sput-boolean v0, Lcom/droidlogic/vitlauncher/CustomView;->allowAnimation:Z

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    sput-object v0, Lcom/droidlogic/vitlauncher/CustomView;->mLock:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/View;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/droidlogic/vitlauncher/CustomView;->img_screen_shot:Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/droidlogic/vitlauncher/CustomView;->img_screen_shot_keep:Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/droidlogic/vitlauncher/CustomView;->img_dim:Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/droidlogic/vitlauncher/CustomView;->gv:Landroid/widget/GridView;

    iput-object v0, p0, Lcom/droidlogic/vitlauncher/CustomView;->thisView:Lcom/droidlogic/vitlauncher/CustomView;

    iput-object v0, p0, Lcom/droidlogic/vitlauncher/CustomView;->mContext:Landroid/content/Context;

    const/4 v0, 0x0

    iput v0, p0, Lcom/droidlogic/vitlauncher/CustomView;->transY:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/droidlogic/vitlauncher/CustomView;->mMode:I

    iput-object p1, p0, Lcom/droidlogic/vitlauncher/CustomView;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/droidlogic/vitlauncher/CustomView;->mSource:Landroid/view/View;

    iput p3, p0, Lcom/droidlogic/vitlauncher/CustomView;->mMode:I

    invoke-direct {p0}, Lcom/droidlogic/vitlauncher/CustomView;->initLayout()V

    return-void
.end method

.method private displayView()V
    .locals 8

    new-instance v0, Lcom/droidlogic/vitlauncher/LocalAdapter;

    iget-object v1, p0, Lcom/droidlogic/vitlauncher/CustomView;->mContext:Landroid/content/Context;

    invoke-direct {p0}, Lcom/droidlogic/vitlauncher/CustomView;->getAppList()Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x4

    new-array v4, v3, [Ljava/lang/String;

    const-string/jumbo v3, "item_icon"

    const/4 v5, 0x0

    aput-object v3, v4, v5

    const-string/jumbo v3, "item_name"

    const/4 v5, 0x1

    aput-object v3, v4, v5

    const-string/jumbo v3, "item_selection"

    const/4 v5, 0x2

    aput-object v3, v4, v5

    const-string/jumbo v3, "item_background"

    const/4 v5, 0x3

    aput-object v3, v4, v5

    const v3, 0x7f0a0002

    const v5, 0x7f0a0004

    const v6, 0x7f0a0003

    const/high16 v7, 0x7f0a0000

    filled-new-array {v3, v5, v6, v7}, [I

    move-result-object v5

    const/high16 v3, 0x7f030000

    invoke-direct/range {v0 .. v5}, Lcom/droidlogic/vitlauncher/LocalAdapter;-><init>(Landroid/content/Context;Ljava/util/List;I[Ljava/lang/String;[I)V

    iget-object v1, p0, Lcom/droidlogic/vitlauncher/CustomView;->gv:Landroid/widget/GridView;

    invoke-virtual {v1, v0}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method private getAppList()Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    const/4 v8, 0x0

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iget-object v6, p0, Lcom/droidlogic/vitlauncher/CustomView;->mContext:Landroid/content/Context;

    check-cast v6, Lcom/droidlogic/vitlauncher/Launcher;

    invoke-virtual {v6}, Lcom/droidlogic/vitlauncher/Launcher;->getAppDataLoader()Lcom/droidlogic/vitlauncher/AppDataLoader;

    move-result-object v6

    const/4 v7, 0x4

    invoke-virtual {v6, v7}, Lcom/droidlogic/vitlauncher/AppDataLoader;->getShortcutList(I)Ljava/util/List;

    move-result-object v3

    iget-object v6, p0, Lcom/droidlogic/vitlauncher/CustomView;->mContext:Landroid/content/Context;

    check-cast v6, Lcom/droidlogic/vitlauncher/Launcher;

    invoke-virtual {v6}, Lcom/droidlogic/vitlauncher/Launcher;->getAppDataLoader()Lcom/droidlogic/vitlauncher/AppDataLoader;

    move-result-object v6

    iget v7, p0, Lcom/droidlogic/vitlauncher/CustomView;->mMode:I

    invoke-virtual {v6, v7}, Lcom/droidlogic/vitlauncher/AppDataLoader;->getShortcutList(I)Ljava/util/List;

    move-result-object v4

    iput v8, p0, Lcom/droidlogic/vitlauncher/CustomView;->homeShortcutCount:I

    const/4 v0, 0x0

    :goto_0
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    if-ge v0, v6, :cond_2

    new-instance v5, Landroid/util/ArrayMap;

    invoke-direct {v5}, Landroid/util/ArrayMap;-><init>()V

    const-string/jumbo v6, "item_selection"

    const v7, 0x7f02002a

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x0

    :goto_1
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    if-ge v1, v6, :cond_0

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/util/ArrayMap;

    const-string/jumbo v7, "component name"

    invoke-virtual {v6, v7}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/util/ArrayMap;

    const-string/jumbo v8, "component name"

    invoke-virtual {v6, v8}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    const-string/jumbo v6, "item_selection"

    const v7, 0x7f020029

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget v6, p0, Lcom/droidlogic/vitlauncher/CustomView;->mMode:I

    if-nez v6, :cond_0

    iget v6, p0, Lcom/droidlogic/vitlauncher/CustomView;->homeShortcutCount:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Lcom/droidlogic/vitlauncher/CustomView;->homeShortcutCount:I

    :cond_0
    const-string/jumbo v7, "item_name"

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/util/ArrayMap;

    const-string/jumbo v8, "name"

    invoke-virtual {v6, v8}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v7, v6}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v7, "item_icon"

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/util/ArrayMap;

    const-string/jumbo v8, "icon"

    invoke-virtual {v6, v8}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v7, v6}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v6, "item_background"

    invoke-direct {p0, v0}, Lcom/droidlogic/vitlauncher/CustomView;->parseItemBackground(I)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v7, "component name"

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/util/ArrayMap;

    const-string/jumbo v8, "component name"

    invoke-virtual {v6, v8}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v7, v6}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_1

    :cond_2
    return-object v2
.end method

.method private initLayout()V
    .locals 3

    iget-object v0, p0, Lcom/droidlogic/vitlauncher/CustomView;->mContext:Landroid/content/Context;

    const v1, 0x7f030005

    invoke-static {v0, v1, p0}, Lcom/droidlogic/vitlauncher/CustomView;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    iput-object p0, p0, Lcom/droidlogic/vitlauncher/CustomView;->thisView:Lcom/droidlogic/vitlauncher/CustomView;

    const v0, 0x7f0a0006

    invoke-virtual {p0, v0}, Lcom/droidlogic/vitlauncher/CustomView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/GridView;

    iput-object v0, p0, Lcom/droidlogic/vitlauncher/CustomView;->gv:Landroid/widget/GridView;

    iget-object v0, p0, Lcom/droidlogic/vitlauncher/CustomView;->gv:Landroid/widget/GridView;

    iget-object v1, p0, Lcom/droidlogic/vitlauncher/CustomView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020003

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/droidlogic/vitlauncher/CustomView;->gv:Landroid/widget/GridView;

    invoke-virtual {v0, p0}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    invoke-direct {p0}, Lcom/droidlogic/vitlauncher/CustomView;->displayView()V

    iget-object v0, p0, Lcom/droidlogic/vitlauncher/CustomView;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/droidlogic/vitlauncher/Launcher;

    invoke-virtual {v0}, Lcom/droidlogic/vitlauncher/Launcher;->getAppDataLoader()Lcom/droidlogic/vitlauncher/AppDataLoader;

    move-result-object v0

    iget v1, p0, Lcom/droidlogic/vitlauncher/CustomView;->mMode:I

    invoke-virtual {v0, v1}, Lcom/droidlogic/vitlauncher/AppDataLoader;->getShortcutString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/droidlogic/vitlauncher/CustomView;->str_custom_apps:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/droidlogic/vitlauncher/CustomView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void
.end method

.method private parseItemBackground(I)I
    .locals 6

    const v5, 0x7f020026

    const v4, 0x7f020025

    const v3, 0x7f020024

    const v2, 0x7f020023

    const v1, 0x7f020022

    rem-int/lit8 v0, p1, 0x14

    add-int/lit8 v0, v0, 0x1

    packed-switch v0, :pswitch_data_0

    return v1

    :pswitch_0
    return v1

    :pswitch_1
    return v2

    :pswitch_2
    return v3

    :pswitch_3
    return v4

    :pswitch_4
    return v5

    :pswitch_5
    const v0, 0x7f020027

    return v0

    :pswitch_6
    return v3

    :pswitch_7
    return v4

    :pswitch_8
    return v1

    :pswitch_9
    return v2

    :pswitch_a
    const v0, 0x7f020027

    return v0

    :pswitch_b
    return v5

    :pswitch_c
    const v0, 0x7f020027

    return v0

    :pswitch_d
    return v2

    :pswitch_e
    return v5

    :pswitch_f
    return v3

    :pswitch_10
    return v1

    :pswitch_11
    return v4

    :pswitch_12
    return v2

    :pswitch_13
    return v3

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_13
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
    .end packed-switch
.end method

.method private setCustomView()V
    .locals 8

    const-wide/16 v6, 0x12c

    const/4 v5, 0x0

    iget-object v3, p0, Lcom/droidlogic/vitlauncher/CustomView;->mContext:Landroid/content/Context;

    check-cast v3, Lcom/droidlogic/vitlauncher/Launcher;

    invoke-virtual {v3}, Lcom/droidlogic/vitlauncher/Launcher;->getMainView()Landroid/view/ViewGroup;

    move-result-object v3

    const/high16 v4, 0x60000

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->setDescendantFocusability(I)V

    iget-object v3, p0, Lcom/droidlogic/vitlauncher/CustomView;->mContext:Landroid/content/Context;

    check-cast v3, Lcom/droidlogic/vitlauncher/Launcher;

    invoke-virtual {v3}, Lcom/droidlogic/vitlauncher/Launcher;->getMainView()Landroid/view/ViewGroup;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    iget v4, p0, Lcom/droidlogic/vitlauncher/CustomView;->transY:I

    int-to-float v4, v4

    invoke-virtual {v3, v4}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3, v6, v7}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    const/high16 v4, 0x3f000000    # 0.5f

    invoke-virtual {v3, v4}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ViewPropertyAnimator;->start()V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iget-object v3, p0, Lcom/droidlogic/vitlauncher/CustomView;->gv:Landroid/widget/GridView;

    invoke-virtual {v3, v0}, Landroid/widget/GridView;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    iget-object v3, p0, Lcom/droidlogic/vitlauncher/CustomView;->gv:Landroid/widget/GridView;

    invoke-virtual {v3}, Landroid/widget/GridView;->requestFocus()Z

    new-instance v1, Landroid/view/animation/TranslateAnimation;

    iget v3, p0, Lcom/droidlogic/vitlauncher/CustomView;->transY:I

    neg-int v3, v3

    int-to-float v3, v3

    invoke-direct {v1, v5, v5, v3, v5}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    invoke-virtual {v1, v6, v7}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    new-instance v3, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v3}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v1, v3}, Landroid/view/animation/TranslateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    iget-object v3, p0, Lcom/droidlogic/vitlauncher/CustomView;->gv:Landroid/widget/GridView;

    invoke-virtual {v3, v1}, Landroid/widget/GridView;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method private updateView()V
    .locals 1

    iget-object v0, p0, Lcom/droidlogic/vitlauncher/CustomView;->gv:Landroid/widget/GridView;

    invoke-virtual {v0}, Landroid/widget/GridView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Landroid/widget/BaseAdapter;

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    return-void
.end method


# virtual methods
.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    return v0

    :pswitch_0
    invoke-virtual {p0}, Lcom/droidlogic/vitlauncher/CustomView;->recoverMainView()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method

.method public onGlobalLayout()V
    .locals 3

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iget-object v1, p0, Lcom/droidlogic/vitlauncher/CustomView;->mSource:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    iget v1, v0, Landroid/graphics/Rect;->top:I

    iget-object v2, p0, Lcom/droidlogic/vitlauncher/CustomView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    div-int/lit8 v2, v2, 0x2

    if-le v1, v2, :cond_0

    invoke-virtual {p0}, Lcom/droidlogic/vitlauncher/CustomView;->getHeight()I

    move-result v1

    neg-int v1, v1

    iput v1, p0, Lcom/droidlogic/vitlauncher/CustomView;->transY:I

    :goto_0
    invoke-direct {p0}, Lcom/droidlogic/vitlauncher/CustomView;->setCustomView()V

    invoke-virtual {p0}, Lcom/droidlogic/vitlauncher/CustomView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/droidlogic/vitlauncher/CustomView;->getHeight()I

    move-result v1

    iput v1, p0, Lcom/droidlogic/vitlauncher/CustomView;->transY:I

    goto :goto_0
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    invoke-virtual {p1, p3}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/ArrayMap;

    sget-object v3, Lcom/droidlogic/vitlauncher/CustomView;->mLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    const-string/jumbo v2, "item_selection"

    invoke-virtual {v0, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    const v4, 0x7f02002a

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget v2, p0, Lcom/droidlogic/vitlauncher/CustomView;->mMode:I

    if-nez v2, :cond_0

    iget v2, p0, Lcom/droidlogic/vitlauncher/CustomView;->homeShortcutCount:I

    sget v4, Lcom/droidlogic/vitlauncher/Launcher;->HOME_SHORTCUT_COUNT:I

    if-lt v2, v4, :cond_0

    iget-object v2, p0, Lcom/droidlogic/vitlauncher/CustomView;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/droidlogic/vitlauncher/CustomView;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f080009

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v2, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v3

    return-void

    :cond_0
    :try_start_1
    const-string/jumbo v2, "component name"

    invoke-virtual {v0, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/droidlogic/vitlauncher/CustomView;->str_custom_apps:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, ";"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/droidlogic/vitlauncher/CustomView;->str_custom_apps:Ljava/lang/String;

    invoke-virtual {p1, p3}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/ArrayMap;

    const-string/jumbo v4, "item_selection"

    const v5, 0x7f020029

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0}, Lcom/droidlogic/vitlauncher/CustomView;->updateView()V

    iget v2, p0, Lcom/droidlogic/vitlauncher/CustomView;->mMode:I

    if-nez v2, :cond_1

    iget v2, p0, Lcom/droidlogic/vitlauncher/CustomView;->homeShortcutCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/droidlogic/vitlauncher/CustomView;->homeShortcutCount:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    :goto_0
    monitor-exit v3

    return-void

    :cond_2
    :try_start_2
    const-string/jumbo v2, "component name"

    invoke-virtual {v0, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/droidlogic/vitlauncher/CustomView;->str_custom_apps:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ";"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, ""

    invoke-virtual {v2, v4, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/droidlogic/vitlauncher/CustomView;->str_custom_apps:Ljava/lang/String;

    invoke-virtual {p1, p3}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/ArrayMap;

    const-string/jumbo v4, "item_selection"

    const v5, 0x7f02002a

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0}, Lcom/droidlogic/vitlauncher/CustomView;->updateView()V

    iget v2, p0, Lcom/droidlogic/vitlauncher/CustomView;->mMode:I

    if-nez v2, :cond_1

    iget v2, p0, Lcom/droidlogic/vitlauncher/CustomView;->homeShortcutCount:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/droidlogic/vitlauncher/CustomView;->homeShortcutCount:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method public recoverMainView()V
    .locals 8

    const-wide/16 v6, 0x12c

    const/4 v5, 0x0

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/droidlogic/vitlauncher/CustomView;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/droidlogic/vitlauncher/Launcher;

    invoke-virtual {v0}, Lcom/droidlogic/vitlauncher/Launcher;->getMainView()Landroid/view/ViewGroup;

    move-result-object v2

    invoke-virtual {p0, v5}, Lcom/droidlogic/vitlauncher/CustomView;->setVisibility(I)V

    sget-boolean v3, Lcom/droidlogic/vitlauncher/CustomView;->allowAnimation:Z

    if-eqz v3, :cond_0

    sput-boolean v5, Lcom/droidlogic/vitlauncher/CustomView;->allowAnimation:Z

    new-instance v1, Landroid/view/animation/TranslateAnimation;

    iget v3, p0, Lcom/droidlogic/vitlauncher/CustomView;->transY:I

    neg-int v3, v3

    int-to-float v3, v3

    invoke-direct {v1, v4, v4, v4, v3}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    invoke-virtual {v1, v6, v7}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    new-instance v3, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v3}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v1, v3}, Landroid/view/animation/TranslateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    iget-object v3, p0, Lcom/droidlogic/vitlauncher/CustomView;->gv:Landroid/widget/GridView;

    invoke-virtual {v3, v1}, Landroid/widget/GridView;->startAnimation(Landroid/view/animation/Animation;)V

    invoke-virtual {v2}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3, v6, v7}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-virtual {v3, v4}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    new-instance v4, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v4}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v3, v4}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    new-instance v4, Lcom/droidlogic/vitlauncher/CustomView$mAnimatorListener;

    const/4 v5, 0x0

    invoke-direct {v4, p0, v5}, Lcom/droidlogic/vitlauncher/CustomView$mAnimatorListener;-><init>(Lcom/droidlogic/vitlauncher/CustomView;Lcom/droidlogic/vitlauncher/CustomView$mAnimatorListener;)V

    invoke-virtual {v3, v4}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ViewPropertyAnimator;->start()V

    invoke-virtual {v0}, Lcom/droidlogic/vitlauncher/Launcher;->getAppDataLoader()Lcom/droidlogic/vitlauncher/AppDataLoader;

    move-result-object v3

    iget v4, p0, Lcom/droidlogic/vitlauncher/CustomView;->mMode:I

    iget-object v5, p0, Lcom/droidlogic/vitlauncher/CustomView;->str_custom_apps:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Lcom/droidlogic/vitlauncher/AppDataLoader;->saveShortcut(ILjava/lang/String;)V

    :cond_0
    return-void
.end method
