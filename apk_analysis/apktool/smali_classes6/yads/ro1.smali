.class public final Lyads/ro1;
.super Landroid/view/ViewGroup$MarginLayoutParams;
.source "SourceFile"


# static fields
.field public static final synthetic i:[Lze4;


# instance fields
.field public a:I

.field public b:Z

.field public c:F

.field public d:F

.field public final e:Lyads/tx4;

.field public final f:Lyads/tx4;

.field public g:I

.field public h:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const-class v0, Lyads/ro1;

    const-string v1, "columnSpan"

    const-string v2, "getColumnSpan()I"

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lyads/mo;->a(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)Lxe4;

    move-result-object v1

    const-string v2, "rowSpan"

    const-string v4, "getRowSpan()I"

    invoke-static {v0, v2, v4, v3}, Lyads/mo;->a(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)Lxe4;

    move-result-object v0

    const/4 v2, 0x2

    new-array v2, v2, [Lze4;

    aput-object v1, v2, v3

    const/4 v1, 0x1

    aput-object v0, v2, v1

    sput-object v2, Lyads/ro1;->i:[Lze4;

    return-void
.end method

.method public constructor <init>(II)V
    .locals 0

    .line 68
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    const p1, 0x800033

    .line 69
    iput p1, p0, Lyads/ro1;->a:I

    .line 70
    new-instance p1, Lyads/tx4;

    invoke-direct {p1}, Lyads/tx4;-><init>()V

    iput-object p1, p0, Lyads/ro1;->e:Lyads/tx4;

    .line 71
    new-instance p1, Lyads/tx4;

    invoke-direct {p1}, Lyads/tx4;-><init>()V

    iput-object p1, p0, Lyads/ro1;->f:Lyads/tx4;

    const p1, 0x7fffffff

    .line 72
    iput p1, p0, Lyads/ro1;->g:I

    .line 73
    iput p1, p0, Lyads/ro1;->h:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 86
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const p1, 0x800033

    .line 87
    iput p1, p0, Lyads/ro1;->a:I

    .line 88
    new-instance p1, Lyads/tx4;

    invoke-direct {p1}, Lyads/tx4;-><init>()V

    iput-object p1, p0, Lyads/ro1;->e:Lyads/tx4;

    .line 89
    new-instance p1, Lyads/tx4;

    invoke-direct {p1}, Lyads/tx4;-><init>()V

    iput-object p1, p0, Lyads/ro1;->f:Lyads/tx4;

    const p1, 0x7fffffff

    .line 90
    iput p1, p0, Lyads/ro1;->g:I

    .line 91
    iput p1, p0, Lyads/ro1;->h:I

    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$LayoutParams;)V
    .locals 0

    .line 74
    invoke-direct {p0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    const p1, 0x800033

    .line 75
    iput p1, p0, Lyads/ro1;->a:I

    .line 76
    new-instance p1, Lyads/tx4;

    invoke-direct {p1}, Lyads/tx4;-><init>()V

    iput-object p1, p0, Lyads/ro1;->e:Lyads/tx4;

    .line 77
    new-instance p1, Lyads/tx4;

    invoke-direct {p1}, Lyads/tx4;-><init>()V

    iput-object p1, p0, Lyads/ro1;->f:Lyads/tx4;

    const p1, 0x7fffffff

    .line 78
    iput p1, p0, Lyads/ro1;->g:I

    .line 79
    iput p1, p0, Lyads/ro1;->h:I

    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$MarginLayoutParams;)V
    .locals 0

    .line 80
    invoke-direct {p0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    const p1, 0x800033

    .line 81
    iput p1, p0, Lyads/ro1;->a:I

    .line 82
    new-instance p1, Lyads/tx4;

    invoke-direct {p1}, Lyads/tx4;-><init>()V

    iput-object p1, p0, Lyads/ro1;->e:Lyads/tx4;

    .line 83
    new-instance p1, Lyads/tx4;

    invoke-direct {p1}, Lyads/tx4;-><init>()V

    iput-object p1, p0, Lyads/ro1;->f:Lyads/tx4;

    const p1, 0x7fffffff

    .line 84
    iput p1, p0, Lyads/ro1;->g:I

    .line 85
    iput p1, p0, Lyads/ro1;->h:I

    return-void
.end method

.method public constructor <init>(Lyads/ro1;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    const v0, 0x800033

    iput v0, p0, Lyads/ro1;->a:I

    new-instance v0, Lyads/tx4;

    invoke-direct {v0}, Lyads/tx4;-><init>()V

    iput-object v0, p0, Lyads/ro1;->e:Lyads/tx4;

    new-instance v0, Lyads/tx4;

    invoke-direct {v0}, Lyads/tx4;-><init>()V

    iput-object v0, p0, Lyads/ro1;->f:Lyads/tx4;

    const v0, 0x7fffffff

    iput v0, p0, Lyads/ro1;->g:I

    iput v0, p0, Lyads/ro1;->h:I

    iget v0, p1, Lyads/ro1;->a:I

    iput v0, p0, Lyads/ro1;->a:I

    iget-boolean v0, p1, Lyads/ro1;->b:Z

    iput-boolean v0, p0, Lyads/ro1;->b:Z

    iget v0, p1, Lyads/ro1;->c:F

    iput v0, p0, Lyads/ro1;->c:F

    iget v0, p1, Lyads/ro1;->d:F

    iput v0, p0, Lyads/ro1;->d:F

    invoke-virtual {p1}, Lyads/ro1;->a()I

    move-result v0

    invoke-virtual {p0, v0}, Lyads/ro1;->a(I)V

    invoke-virtual {p1}, Lyads/ro1;->c()I

    move-result v0

    invoke-virtual {p0, v0}, Lyads/ro1;->c(I)V

    iget v0, p1, Lyads/ro1;->g:I

    iput v0, p0, Lyads/ro1;->g:I

    iget p1, p1, Lyads/ro1;->h:I

    iput p1, p0, Lyads/ro1;->h:I

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 2

    .line 32
    iget-object p0, p0, Lyads/ro1;->e:Lyads/tx4;

    sget-object v0, Lyads/ro1;->i:[Lze4;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    .line 33
    iget-object p0, p0, Lyads/tx4;->a:Ljava/lang/Number;

    .line 34
    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    return p0
.end method

.method public final a(I)V
    .locals 4

    iget-object p0, p0, Lyads/ro1;->e:Lyads/tx4;

    sget-object v0, Lyads/ro1;->i:[Lze4;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmpg-double v0, v0, v2

    if-gtz v0, :cond_0

    const/4 p1, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    :cond_0
    iput-object p1, p0, Lyads/tx4;->a:Ljava/lang/Number;

    return-void
.end method

.method public final b()I
    .locals 0

    iget p0, p0, Lyads/ro1;->a:I

    return p0
.end method

.method public final b(I)V
    .locals 0

    .line 3
    iput p1, p0, Lyads/ro1;->a:I

    return-void
.end method

.method public final c()I
    .locals 2

    .line 31
    iget-object p0, p0, Lyads/ro1;->f:Lyads/tx4;

    sget-object v0, Lyads/ro1;->i:[Lze4;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    .line 32
    iget-object p0, p0, Lyads/tx4;->a:Ljava/lang/Number;

    .line 33
    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    return p0
.end method

.method public final c(I)V
    .locals 6

    iget-object p0, p0, Lyads/ro1;->f:Lyads/tx4;

    sget-object v0, Lyads/ro1;->i:[Lze4;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmpg-double v0, v2, v4

    if-gtz v0, :cond_0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    :cond_0
    iput-object p1, p0, Lyads/tx4;->a:Ljava/lang/Number;

    return-void
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    return v1

    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Lyads/ro1;

    if-eq v3, v2, :cond_2

    return v1

    :cond_2
    check-cast p1, Lyads/ro1;

    iget v2, p0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    iget v3, p1, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    if-ne v2, v3, :cond_3

    iget v2, p0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    iget v3, p1, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    if-ne v2, v3, :cond_3

    iget v2, p0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iget v3, p1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    if-ne v2, v3, :cond_3

    iget v2, p0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    iget v3, p1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    if-ne v2, v3, :cond_3

    iget v2, p0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget v3, p1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    if-ne v2, v3, :cond_3

    iget v2, p0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    iget v3, p1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    if-ne v2, v3, :cond_3

    iget v2, p0, Lyads/ro1;->a:I

    iget v3, p1, Lyads/ro1;->a:I

    if-ne v2, v3, :cond_3

    iget-boolean v2, p0, Lyads/ro1;->b:Z

    iget-boolean v3, p1, Lyads/ro1;->b:Z

    if-ne v2, v3, :cond_3

    invoke-virtual {p0}, Lyads/ro1;->a()I

    move-result v2

    invoke-virtual {p1}, Lyads/ro1;->a()I

    move-result v3

    if-ne v2, v3, :cond_3

    invoke-virtual {p0}, Lyads/ro1;->c()I

    move-result v2

    invoke-virtual {p1}, Lyads/ro1;->c()I

    move-result v3

    if-ne v2, v3, :cond_3

    iget v2, p0, Lyads/ro1;->c:F

    iget v3, p1, Lyads/ro1;->c:F

    cmpg-float v2, v2, v3

    if-nez v2, :cond_3

    iget v2, p0, Lyads/ro1;->d:F

    iget v3, p1, Lyads/ro1;->d:F

    cmpg-float v2, v2, v3

    if-nez v2, :cond_3

    iget v2, p0, Lyads/ro1;->g:I

    iget v3, p1, Lyads/ro1;->g:I

    if-ne v2, v3, :cond_3

    iget p0, p0, Lyads/ro1;->h:I

    iget p1, p1, Lyads/ro1;->h:I

    if-ne p0, p1, :cond_3

    return v0

    :cond_3
    return v1
.end method

.method public final hashCode()I
    .locals 4

    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lyads/ro1;->a:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lyads/ro1;->b:Z

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p0}, Lyads/ro1;->a()I

    move-result v1

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    invoke-virtual {p0}, Lyads/ro1;->c()I

    move-result v0

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lyads/ro1;->c:F

    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget v0, p0, Lyads/ro1;->d:F

    invoke-static {v0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lyads/ro1;->g:I

    const/4 v2, 0x0

    const v3, 0x7fffffff

    if-eq v1, v3, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget p0, p0, Lyads/ro1;->h:I

    if-eq p0, v3, :cond_1

    move v2, p0

    :cond_1
    add-int/2addr v0, v2

    return v0
.end method
