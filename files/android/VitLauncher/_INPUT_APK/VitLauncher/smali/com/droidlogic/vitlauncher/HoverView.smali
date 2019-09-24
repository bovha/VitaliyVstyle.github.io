.class public Lcom/droidlogic/vitlauncher/HoverView;
.super Landroid/widget/RelativeLayout;
.source "HoverView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/droidlogic/vitlauncher/HoverView$ScaleAnimationListener;
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/droidlogic/vitlauncher/HoverView;->mContext:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object p1, p0, Lcom/droidlogic/vitlauncher/HoverView;->mContext:Landroid/content/Context;

    invoke-direct {p0}, Lcom/droidlogic/vitlauncher/HoverView;->initlayout()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method private initlayout()V
    .locals 2

    iget-object v0, p0, Lcom/droidlogic/vitlauncher/HoverView;->mContext:Landroid/content/Context;

    const v1, 0x7f030006

    invoke-static {v0, v1, p0}, Lcom/droidlogic/vitlauncher/HoverView;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    return-void
.end method

.method public static setViewPosition(Landroid/view/View;Landroid/graphics/Rect;)V
    .locals 4

    const/4 v3, 0x0

    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    iget v1, p1, Landroid/graphics/Rect;->left:I

    iget v2, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {v0, v1, v2, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private startAnimation()V
    .locals 9

    const/4 v5, 0x1

    const/high16 v2, 0x3f800000    # 1.0f

    const v1, 0x3f733333    # 0.95f

    const/high16 v6, 0x3f000000    # 0.5f

    new-instance v0, Landroid/view/animation/ScaleAnimation;

    move v3, v1

    move v4, v2

    move v7, v5

    move v8, v6

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    const-wide/16 v2, 0x46

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/ScaleAnimation;->setStartTime(J)V

    new-instance v1, Lcom/droidlogic/vitlauncher/HoverView$ScaleAnimationListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/droidlogic/vitlauncher/HoverView$ScaleAnimationListener;-><init>(Lcom/droidlogic/vitlauncher/HoverView;Lcom/droidlogic/vitlauncher/HoverView$ScaleAnimationListener;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/ScaleAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    invoke-virtual {p0, v0}, Lcom/droidlogic/vitlauncher/HoverView;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 3

    const/4 v2, 0x0

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, v2, v2, v2, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-static {p0, v0}, Lcom/droidlogic/vitlauncher/HoverView;->setViewPosition(Landroid/view/View;Landroid/graphics/Rect;)V

    return-void
.end method

.method public setHover(Lcom/droidlogic/vitlauncher/MyRelativeLayout;)V
    .locals 12

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {p1, v1}, Lcom/droidlogic/vitlauncher/MyRelativeLayout;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    new-instance v2, Landroid/graphics/Rect;

    iget v8, v1, Landroid/graphics/Rect;->left:I

    iget v9, v1, Landroid/graphics/Rect;->top:I

    iget v10, v1, Landroid/graphics/Rect;->right:I

    iget v11, v1, Landroid/graphics/Rect;->bottom:I

    invoke-direct {v2, v8, v9, v10, v11}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-static {p0, v2}, Lcom/droidlogic/vitlauncher/HoverView;->setViewPosition(Landroid/view/View;Landroid/graphics/Rect;)V

    invoke-virtual {p1}, Lcom/droidlogic/vitlauncher/MyRelativeLayout;->getVisibility()I

    move-result v8

    if-nez v8, :cond_1

    invoke-direct {p0}, Lcom/droidlogic/vitlauncher/HoverView;->startAnimation()V

    :cond_1
    return-void
.end method
