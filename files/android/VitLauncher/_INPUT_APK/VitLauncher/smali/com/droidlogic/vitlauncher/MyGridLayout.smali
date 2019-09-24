.class public Lcom/droidlogic/vitlauncher/MyGridLayout;
.super Landroid/widget/GridLayout;
.source "MyGridLayout.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mLock:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/GridLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/widget/GridLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object p1, p0, Lcom/droidlogic/vitlauncher/MyGridLayout;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/droidlogic/vitlauncher/MyGridLayout;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/droidlogic/vitlauncher/Launcher;

    invoke-virtual {v0}, Lcom/droidlogic/vitlauncher/Launcher;->getLock()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/droidlogic/vitlauncher/MyGridLayout;->mLock:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/GridLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method private parseItemBackground(II)I
    .locals 6

    const v5, 0x7f020027

    const v4, 0x7f020025

    const v3, 0x7f020024

    const v2, 0x7f020023

    const v1, 0x7f020022

    if-nez p2, :cond_0

    rem-int/lit8 v0, p1, 0xb

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
    const v0, 0x7f020026

    return v0

    :pswitch_5
    return v5

    :pswitch_6
    return v3

    :pswitch_7
    return v4

    :pswitch_8
    return v1

    :pswitch_9
    return v2

    :pswitch_a
    return v5

    :cond_0
    rem-int/lit8 v0, p1, 0x12

    packed-switch v0, :pswitch_data_1

    return v1

    :pswitch_b
    return v1

    :pswitch_c
    return v2

    :pswitch_d
    return v3

    :pswitch_e
    return v4

    :pswitch_f
    const v0, 0x7f020026

    return v0

    :pswitch_10
    return v5

    :pswitch_11
    return v3

    :pswitch_12
    return v4

    :pswitch_13
    return v1

    :pswitch_14
    return v2

    :pswitch_15
    return v5

    :pswitch_16
    const v0, 0x7f020026

    return v0

    :pswitch_17
    return v5

    :pswitch_18
    return v2

    :pswitch_19
    const v0, 0x7f020026

    return v0

    :pswitch_1a
    return v3

    :pswitch_1b
    return v1

    :pswitch_1c
    return v4

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_a
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
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1c
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_16
        :pswitch_17
        :pswitch_18
        :pswitch_19
        :pswitch_1a
        :pswitch_1b
    .end packed-switch
.end method


# virtual methods
.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/widget/GridLayout;->onDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getSource()I

    move-result v0

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/GridLayout;->onGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    :pswitch_0
    iget-object v0, p0, Lcom/droidlogic/vitlauncher/MyGridLayout;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/droidlogic/vitlauncher/Launcher;

    invoke-virtual {v0}, Lcom/droidlogic/vitlauncher/Launcher;->getHoverView()Lcom/droidlogic/vitlauncher/HoverView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/droidlogic/vitlauncher/HoverView;->clear()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_0
    .end packed-switch
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    invoke-super/range {p0 .. p5}, Landroid/widget/GridLayout;->onLayout(ZIIII)V

    return-void
.end method

.method public setLayoutView(ILjava/util/List;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;)V"
        }
    .end annotation

    iget-object v8, p0, Lcom/droidlogic/vitlauncher/MyGridLayout;->mLock:Ljava/lang/Object;

    monitor-enter v8

    :try_start_0
    invoke-virtual {p0}, Lcom/droidlogic/vitlauncher/MyGridLayout;->getChildCount()I

    move-result v6

    if-lez v6, :cond_0

    invoke-virtual {p0}, Lcom/droidlogic/vitlauncher/MyGridLayout;->removeAllViews()V

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v6

    if-ge v2, v6, :cond_3

    if-nez p1, :cond_1

    iget-object v6, p0, Lcom/droidlogic/vitlauncher/MyGridLayout;->mContext:Landroid/content/Context;

    const v7, 0x7f030002

    const/4 v9, 0x0

    invoke-static {v6, v7, v9}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/droidlogic/vitlauncher/MyRelativeLayout;

    const/4 v6, 0x6

    invoke-virtual {v5, v6}, Lcom/droidlogic/vitlauncher/MyRelativeLayout;->setType(I)V

    :goto_1
    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/droidlogic/vitlauncher/MyRelativeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    new-instance v1, Ljava/lang/ref/SoftReference;

    iget-object v6, p0, Lcom/droidlogic/vitlauncher/MyGridLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-direct {p0, v2, p1}, Lcom/droidlogic/vitlauncher/MyGridLayout;->parseItemBackground(II)I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-direct {v1, v6}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, v6}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/util/ArrayMap;

    const-string/jumbo v7, "icon"

    invoke-virtual {v6, v7}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    instance-of v6, v6, Landroid/graphics/drawable/Drawable;

    if-eqz v6, :cond_2

    new-instance v3, Ljava/lang/ref/SoftReference;

    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/util/ArrayMap;

    const-string/jumbo v7, "icon"

    invoke-virtual {v6, v7}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/graphics/drawable/Drawable;

    invoke-direct {v3, v6}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v3}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, v6}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/util/ArrayMap;

    const-string/jumbo v7, "intent"

    invoke-virtual {v6, v7}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/Intent;

    invoke-virtual {v5, v6}, Lcom/droidlogic/vitlauncher/MyRelativeLayout;->setIntent(Landroid/content/Intent;)V

    :goto_2
    invoke-virtual {p0, v5}, Lcom/droidlogic/vitlauncher/MyGridLayout;->addView(Landroid/view/View;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    iget-object v6, p0, Lcom/droidlogic/vitlauncher/MyGridLayout;->mContext:Landroid/content/Context;

    const v7, 0x7f030001

    const/4 v9, 0x0

    invoke-static {v6, v7, v9}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/droidlogic/vitlauncher/MyRelativeLayout;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Lcom/droidlogic/vitlauncher/MyRelativeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/util/ArrayMap;

    const-string/jumbo v9, "name"

    invoke-virtual {v7, v9}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v6, 0x7

    invoke-virtual {v5, v6}, Lcom/droidlogic/vitlauncher/MyRelativeLayout;->setType(I)V

    invoke-virtual {v5, v2}, Lcom/droidlogic/vitlauncher/MyRelativeLayout;->setNumber(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_1

    :catchall_0
    move-exception v6

    monitor-exit v8

    throw v6

    :cond_2
    :try_start_1
    new-instance v0, Ljava/lang/ref/SoftReference;

    iget-object v6, p0, Lcom/droidlogic/vitlauncher/MyGridLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f020028

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-direct {v0, v6}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, v6}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    const-string/jumbo v6, "img_add"

    invoke-virtual {v4, v6}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Lcom/droidlogic/vitlauncher/MyRelativeLayout;->setAddButton(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :cond_3
    monitor-exit v8

    return-void
.end method
