.class public Lcom/droidlogic/vitlauncher/LocalAdapter;
.super Landroid/widget/BaseAdapter;
.source "LocalAdapter.java"

# interfaces
.implements Landroid/widget/Filterable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/droidlogic/vitlauncher/LocalAdapter$SimpleFilter;,
        Lcom/droidlogic/vitlauncher/LocalAdapter$ViewBinder;
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<+",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "*>;>;"
        }
    .end annotation
.end field

.field private mDropDownResource:I

.field private mFilter:Lcom/droidlogic/vitlauncher/LocalAdapter$SimpleFilter;

.field private mFrom:[Ljava/lang/String;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mResource:I

.field private mTo:[I

.field private mUnfilteredData:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "*>;>;"
        }
    .end annotation
.end field

.field private mViewBinder:Lcom/droidlogic/vitlauncher/LocalAdapter$ViewBinder;


# direct methods
.method static synthetic -get0(Lcom/droidlogic/vitlauncher/LocalAdapter;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/droidlogic/vitlauncher/LocalAdapter;->mData:Ljava/util/List;

    return-object v0
.end method

.method static synthetic -get1(Lcom/droidlogic/vitlauncher/LocalAdapter;)[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/droidlogic/vitlauncher/LocalAdapter;->mFrom:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get2(Lcom/droidlogic/vitlauncher/LocalAdapter;)[I
    .locals 1

    iget-object v0, p0, Lcom/droidlogic/vitlauncher/LocalAdapter;->mTo:[I

    return-object v0
.end method

.method static synthetic -get3(Lcom/droidlogic/vitlauncher/LocalAdapter;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/droidlogic/vitlauncher/LocalAdapter;->mUnfilteredData:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic -set0(Lcom/droidlogic/vitlauncher/LocalAdapter;Ljava/util/List;)Ljava/util/List;
    .locals 0

    iput-object p1, p0, Lcom/droidlogic/vitlauncher/LocalAdapter;->mData:Ljava/util/List;

    return-object p1
.end method

.method static synthetic -set1(Lcom/droidlogic/vitlauncher/LocalAdapter;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0

    iput-object p1, p0, Lcom/droidlogic/vitlauncher/LocalAdapter;->mUnfilteredData:Ljava/util/ArrayList;

    return-object p1
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/List;I[Ljava/lang/String;[I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<+",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "*>;>;I[",
            "Ljava/lang/String;",
            "[I)V"
        }
    .end annotation

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    iput-object p1, p0, Lcom/droidlogic/vitlauncher/LocalAdapter;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/droidlogic/vitlauncher/LocalAdapter;->mData:Ljava/util/List;

    iput p3, p0, Lcom/droidlogic/vitlauncher/LocalAdapter;->mDropDownResource:I

    iput p3, p0, Lcom/droidlogic/vitlauncher/LocalAdapter;->mResource:I

    iput-object p4, p0, Lcom/droidlogic/vitlauncher/LocalAdapter;->mFrom:[Ljava/lang/String;

    iput-object p5, p0, Lcom/droidlogic/vitlauncher/LocalAdapter;->mTo:[I

    const-string/jumbo v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/droidlogic/vitlauncher/LocalAdapter;->mInflater:Landroid/view/LayoutInflater;

    return-void
.end method

.method private bindView(ILandroid/view/View;)V
    .locals 15

    iget-object v12, p0, Lcom/droidlogic/vitlauncher/LocalAdapter;->mData:Ljava/util/List;

    move/from16 v0, p1

    invoke-interface {v12, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map;

    if-nez v5, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/droidlogic/vitlauncher/LocalAdapter;->mViewBinder:Lcom/droidlogic/vitlauncher/LocalAdapter$ViewBinder;

    iget-object v6, p0, Lcom/droidlogic/vitlauncher/LocalAdapter;->mFrom:[Ljava/lang/String;

    iget-object v10, p0, Lcom/droidlogic/vitlauncher/LocalAdapter;->mTo:[I

    array-length v3, v10

    const/4 v7, 0x0

    :goto_0
    if-ge v7, v3, :cond_e

    aget v12, v10, v7

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    if-eqz v11, :cond_3

    aget-object v12, v6, v7

    invoke-interface {v5, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_4

    const-string/jumbo v9, ""

    :goto_1
    if-nez v9, :cond_1

    const-string/jumbo v9, ""

    :cond_1
    const/4 v2, 0x0

    if-eqz v1, :cond_2

    invoke-interface {v1, v11, v4, v9}, Lcom/droidlogic/vitlauncher/LocalAdapter$ViewBinder;->setViewValue(Landroid/view/View;Ljava/lang/Object;Ljava/lang/String;)Z

    move-result v2

    :cond_2
    if-nez v2, :cond_3

    instance-of v12, v11, Landroid/widget/Checkable;

    if-eqz v12, :cond_8

    instance-of v12, v4, Ljava/lang/Boolean;

    if-eqz v12, :cond_5

    check-cast v11, Landroid/widget/Checkable;

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v12

    invoke-interface {v11, v12}, Landroid/widget/Checkable;->setChecked(Z)V

    :cond_3
    :goto_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_4
    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    goto :goto_1

    :cond_5
    instance-of v12, v11, Landroid/widget/TextView;

    if-eqz v12, :cond_6

    check-cast v11, Landroid/widget/TextView;

    invoke-virtual {p0, v11, v9}, Lcom/droidlogic/vitlauncher/LocalAdapter;->setViewText(Landroid/widget/TextView;Ljava/lang/String;)V

    goto :goto_2

    :cond_6
    new-instance v13, Ljava/lang/IllegalStateException;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11}, Landroid/view/View;->getClass()Ljava/lang/Class;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v14, " should be bound to a Boolean, not a "

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    if-nez v4, :cond_7

    const-string/jumbo v12, "<unknown type>"

    :goto_3
    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v13, v12}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v13

    :cond_7
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v12

    goto :goto_3

    :cond_8
    instance-of v12, v11, Landroid/widget/TextView;

    if-eqz v12, :cond_9

    check-cast v11, Landroid/widget/TextView;

    invoke-virtual {p0, v11, v9}, Lcom/droidlogic/vitlauncher/LocalAdapter;->setViewText(Landroid/widget/TextView;Ljava/lang/String;)V

    goto :goto_2

    :cond_9
    instance-of v12, v11, Landroid/widget/ImageView;

    if-eqz v12, :cond_c

    instance-of v12, v4, Ljava/lang/Integer;

    if-eqz v12, :cond_a

    check-cast v11, Landroid/widget/ImageView;

    iget-object v12, p0, Lcom/droidlogic/vitlauncher/LocalAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v12}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v13

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_2

    :cond_a
    instance-of v12, v4, Landroid/graphics/drawable/Drawable;

    if-eqz v12, :cond_b

    check-cast v11, Landroid/widget/ImageView;

    check-cast v4, Landroid/graphics/drawable/Drawable;

    invoke-virtual {v11, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_2

    :cond_b
    :try_start_0
    move-object v0, v11

    check-cast v0, Landroid/widget/ImageView;

    move-object v12, v0

    check-cast v4, Landroid/graphics/Bitmap;

    invoke-virtual {v12, v4}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v8

    check-cast v11, Landroid/widget/ImageView;

    invoke-static {v9}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/widget/ImageView;->setImageURI(Landroid/net/Uri;)V

    goto/16 :goto_2

    :cond_c
    instance-of v12, v11, Landroid/widget/RelativeLayout;

    if-eqz v12, :cond_d

    instance-of v12, v4, Ljava/lang/Integer;

    if-eqz v12, :cond_3

    iget-object v12, p0, Lcom/droidlogic/vitlauncher/LocalAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v12}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v13

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_2

    :cond_d
    new-instance v12, Ljava/lang/IllegalStateException;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11}, Landroid/view/View;->getClass()Ljava/lang/Class;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, " is not a "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, " view that can be bounds by this LocalAdapter"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v12

    :cond_e
    return-void
.end method

.method private createViewFromResource(ILandroid/view/View;Landroid/view/ViewGroup;I)Landroid/view/View;
    .locals 5

    if-nez p2, :cond_0

    iget-object v2, p0, Lcom/droidlogic/vitlauncher/LocalAdapter;->mInflater:Landroid/view/LayoutInflater;

    const/4 v3, 0x0

    invoke-virtual {v2, p4, p3, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    :goto_0
    :try_start_0
    invoke-direct {p0, p1, v1}, Lcom/droidlogic/vitlauncher/LocalAdapter;->bindView(ILandroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    return-object v1

    :cond_0
    move-object v1, p2

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1
.end method


# virtual methods
.method public getCount()I
    .locals 1

    iget-object v0, p0, Lcom/droidlogic/vitlauncher/LocalAdapter;->mData:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getDropDownView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    iget v0, p0, Lcom/droidlogic/vitlauncher/LocalAdapter;->mDropDownResource:I

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/droidlogic/vitlauncher/LocalAdapter;->createViewFromResource(ILandroid/view/View;Landroid/view/ViewGroup;I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getFilter()Landroid/widget/Filter;
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/droidlogic/vitlauncher/LocalAdapter;->mFilter:Lcom/droidlogic/vitlauncher/LocalAdapter$SimpleFilter;

    if-nez v0, :cond_0

    new-instance v0, Lcom/droidlogic/vitlauncher/LocalAdapter$SimpleFilter;

    invoke-direct {v0, p0, v1}, Lcom/droidlogic/vitlauncher/LocalAdapter$SimpleFilter;-><init>(Lcom/droidlogic/vitlauncher/LocalAdapter;Lcom/droidlogic/vitlauncher/LocalAdapter$SimpleFilter;)V

    iput-object v0, p0, Lcom/droidlogic/vitlauncher/LocalAdapter;->mFilter:Lcom/droidlogic/vitlauncher/LocalAdapter$SimpleFilter;

    :cond_0
    iget-object v0, p0, Lcom/droidlogic/vitlauncher/LocalAdapter;->mFilter:Lcom/droidlogic/vitlauncher/LocalAdapter$SimpleFilter;

    return-object v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/droidlogic/vitlauncher/LocalAdapter;->mData:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    iget v0, p0, Lcom/droidlogic/vitlauncher/LocalAdapter;->mResource:I

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/droidlogic/vitlauncher/LocalAdapter;->createViewFromResource(ILandroid/view/View;Landroid/view/ViewGroup;I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public setViewText(Landroid/widget/TextView;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
