.class public Landroidx/core/view/ViewStructureCompat;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final mWrappedObj:Landroid/view/ViewStructure;


# direct methods
.method private constructor <init>(Landroid/view/ViewStructure;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/core/view/ViewStructureCompat;->mWrappedObj:Landroid/view/ViewStructure;

    return-void
.end method

.method public static toViewStructureCompat(Landroid/view/ViewStructure;)Landroidx/core/view/ViewStructureCompat;
    .locals 1

    new-instance v0, Landroidx/core/view/ViewStructureCompat;

    invoke-direct {v0, p0}, Landroidx/core/view/ViewStructureCompat;-><init>(Landroid/view/ViewStructure;)V

    return-object v0
.end method


# virtual methods
.method public setClassName(Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Landroidx/core/view/ViewStructureCompat;->mWrappedObj:Landroid/view/ViewStructure;

    invoke-virtual {p0, p1}, Landroid/view/ViewStructure;->setClassName(Ljava/lang/String;)V

    return-void
.end method

.method public setContentDescription(Ljava/lang/CharSequence;)V
    .locals 0

    iget-object p0, p0, Landroidx/core/view/ViewStructureCompat;->mWrappedObj:Landroid/view/ViewStructure;

    invoke-virtual {p0, p1}, Landroid/view/ViewStructure;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setDimens(IIIIII)V
    .locals 0

    iget-object p0, p0, Landroidx/core/view/ViewStructureCompat;->mWrappedObj:Landroid/view/ViewStructure;

    invoke-virtual/range {p0 .. p6}, Landroid/view/ViewStructure;->setDimens(IIIIII)V

    return-void
.end method

.method public setText(Ljava/lang/CharSequence;)V
    .locals 0

    iget-object p0, p0, Landroidx/core/view/ViewStructureCompat;->mWrappedObj:Landroid/view/ViewStructure;

    invoke-virtual {p0, p1}, Landroid/view/ViewStructure;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public toViewStructure()Landroid/view/ViewStructure;
    .locals 0

    iget-object p0, p0, Landroidx/core/view/ViewStructureCompat;->mWrappedObj:Landroid/view/ViewStructure;

    return-object p0
.end method
