.class public final Lyads/mn5;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final h:Ljava/util/Comparator;

.field public static final i:Ljava/util/Comparator;


# instance fields
.field public final a:I

.field public final b:Ljava/util/ArrayList;

.field public final c:[Lyads/ln5;

.field public d:I

.field public e:I

.field public f:I

.field public g:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lxr3;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lxr3;-><init>(I)V

    sput-object v0, Lyads/mn5;->h:Ljava/util/Comparator;

    new-instance v0, Lcr7;

    invoke-direct {v0, v1}, Lcr7;-><init>(I)V

    sput-object v0, Lyads/mn5;->i:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lyads/mn5;->a:I

    const/4 p1, 0x5

    new-array p1, p1, [Lyads/ln5;

    iput-object p1, p0, Lyads/mn5;->c:[Lyads/ln5;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lyads/mn5;->b:Ljava/util/ArrayList;

    const/4 p1, -0x1

    iput p1, p0, Lyads/mn5;->d:I

    return-void
.end method

.method public static synthetic a(Lyads/ln5;Lyads/ln5;)I
    .locals 0

    iget p0, p0, Lyads/ln5;->a:I

    iget p1, p1, Lyads/ln5;->a:I

    sub-int/2addr p0, p1

    return p0
.end method

.method public static synthetic b(Lyads/ln5;Lyads/ln5;)I
    .locals 0

    iget p0, p0, Lyads/ln5;->c:F

    iget p1, p1, Lyads/ln5;->c:F

    invoke-static {p0, p1}, Ljava/lang/Float;->compare(FF)I

    move-result p0

    return p0
.end method
