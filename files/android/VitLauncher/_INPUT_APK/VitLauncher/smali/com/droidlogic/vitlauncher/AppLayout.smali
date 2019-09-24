.class public Lcom/droidlogic/vitlauncher/AppLayout;
.super Landroid/widget/RelativeLayout;
.source "AppLayout.java"


# instance fields
.field animLeftIn:Landroid/view/animation/Animation;

.field animLeftOut:Landroid/view/animation/Animation;

.field animRightIn:Landroid/view/animation/Animation;

.field animRightOut:Landroid/view/animation/Animation;

.field private currenPassword:I

.field private grid_layout:Lcom/droidlogic/vitlauncher/MyGridLayout;

.field private icon:Landroid/widget/ImageView;

.field private mContext:Landroid/content/Context;

.field private password:I

.field private title:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput v0, p0, Lcom/droidlogic/vitlauncher/AppLayout;->password:I

    iput v0, p0, Lcom/droidlogic/vitlauncher/AppLayout;->currenPassword:I

    iput-object p1, p0, Lcom/droidlogic/vitlauncher/AppLayout;->mContext:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput v0, p0, Lcom/droidlogic/vitlauncher/AppLayout;->password:I

    iput v0, p0, Lcom/droidlogic/vitlauncher/AppLayout;->currenPassword:I

    iput-object p1, p0, Lcom/droidlogic/vitlauncher/AppLayout;->mContext:Landroid/content/Context;

    invoke-direct {p0}, Lcom/droidlogic/vitlauncher/AppLayout;->initlayout()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput v0, p0, Lcom/droidlogic/vitlauncher/AppLayout;->password:I

    iput v0, p0, Lcom/droidlogic/vitlauncher/AppLayout;->currenPassword:I

    return-void
.end method

.method private initlayout()V
    .locals 2

    iget-object v0, p0, Lcom/droidlogic/vitlauncher/AppLayout;->mContext:Landroid/content/Context;

    const v1, 0x7f030009

    invoke-static {v0, v1, p0}, Lcom/droidlogic/vitlauncher/AppLayout;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    const v0, 0x7f0a002c

    invoke-virtual {p0, v0}, Lcom/droidlogic/vitlauncher/AppLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/droidlogic/vitlauncher/AppLayout;->icon:Landroid/widget/ImageView;

    const v0, 0x7f0a002d

    invoke-virtual {p0, v0}, Lcom/droidlogic/vitlauncher/AppLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/droidlogic/vitlauncher/AppLayout;->title:Landroid/widget/TextView;

    const v0, 0x7f0a002e

    invoke-virtual {p0, v0}, Lcom/droidlogic/vitlauncher/AppLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/droidlogic/vitlauncher/MyGridLayout;

    iput-object v0, p0, Lcom/droidlogic/vitlauncher/AppLayout;->grid_layout:Lcom/droidlogic/vitlauncher/MyGridLayout;

    iget-object v0, p0, Lcom/droidlogic/vitlauncher/AppLayout;->mContext:Landroid/content/Context;

    const v1, 0x7f040008

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/droidlogic/vitlauncher/AppLayout;->animLeftIn:Landroid/view/animation/Animation;

    iget-object v0, p0, Lcom/droidlogic/vitlauncher/AppLayout;->mContext:Landroid/content/Context;

    const v1, 0x7f040009

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/droidlogic/vitlauncher/AppLayout;->animLeftOut:Landroid/view/animation/Animation;

    iget-object v0, p0, Lcom/droidlogic/vitlauncher/AppLayout;->mContext:Landroid/content/Context;

    const v1, 0x7f04000a

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/droidlogic/vitlauncher/AppLayout;->animRightIn:Landroid/view/animation/Animation;

    iget-object v0, p0, Lcom/droidlogic/vitlauncher/AppLayout;->mContext:Landroid/content/Context;

    const v1, 0x7f04000b

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/droidlogic/vitlauncher/AppLayout;->animRightOut:Landroid/view/animation/Animation;

    return-void
.end method


# virtual methods
.method public setImageAndText(II)V
    .locals 2

    iget-object v0, p0, Lcom/droidlogic/vitlauncher/AppLayout;->icon:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/droidlogic/vitlauncher/AppLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/droidlogic/vitlauncher/AppLayout;->title:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(I)V

    return-void
.end method

.method public setLayout(ILjava/util/List;)V
    .locals 4
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

    const/4 v3, 0x0

    packed-switch p1, :pswitch_data_0

    :goto_0
    :pswitch_0
    iget-object v1, p0, Lcom/droidlogic/vitlauncher/AppLayout;->grid_layout:Lcom/droidlogic/vitlauncher/MyGridLayout;

    invoke-virtual {v1}, Lcom/droidlogic/vitlauncher/MyGridLayout;->clearFocus()V

    iget-object v1, p0, Lcom/droidlogic/vitlauncher/AppLayout;->grid_layout:Lcom/droidlogic/vitlauncher/MyGridLayout;

    invoke-virtual {v1, p1, p2}, Lcom/droidlogic/vitlauncher/MyGridLayout;->setLayoutView(ILjava/util/List;)V

    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/droidlogic/vitlauncher/AppLayout;->grid_layout:Lcom/droidlogic/vitlauncher/MyGridLayout;

    invoke-virtual {v1}, Lcom/droidlogic/vitlauncher/MyGridLayout;->getChildCount()I

    move-result v1

    if-lez v1, :cond_0

    iget-object v1, p0, Lcom/droidlogic/vitlauncher/AppLayout;->grid_layout:Lcom/droidlogic/vitlauncher/MyGridLayout;

    invoke-virtual {v1, v3}, Lcom/droidlogic/vitlauncher/MyGridLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/droidlogic/vitlauncher/MyRelativeLayout;

    invoke-virtual {v0}, Lcom/droidlogic/vitlauncher/MyRelativeLayout;->requestFocus()Z

    :cond_0
    return-void

    :pswitch_1
    const v1, 0x7f020045

    const v2, 0x7f080002

    invoke-virtual {p0, v1, v2}, Lcom/droidlogic/vitlauncher/AppLayout;->setImageAndText(II)V

    goto :goto_0

    :pswitch_2
    const v1, 0x7f02002e

    const v2, 0x7f080007

    invoke-virtual {p0, v1, v2}, Lcom/droidlogic/vitlauncher/AppLayout;->setImageAndText(II)V

    goto :goto_0

    :pswitch_3
    const/high16 v1, 0x7f020000

    const v2, 0x7f080006

    invoke-virtual {p0, v1, v2}, Lcom/droidlogic/vitlauncher/AppLayout;->setImageAndText(II)V

    goto :goto_0

    :pswitch_4
    const v1, 0x7f02002c

    const v2, 0x7f080008

    invoke-virtual {p0, v1, v2}, Lcom/droidlogic/vitlauncher/AppLayout;->setImageAndText(II)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
