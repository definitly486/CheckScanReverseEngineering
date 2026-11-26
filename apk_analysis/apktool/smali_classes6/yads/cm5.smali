.class public final Lyads/cm5;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final b:Ljava/util/HashSet;


# instance fields
.field public final a:Lyads/yw5;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Ljava/util/HashSet;

    sget-object v1, Lyads/ww5;->c:Lyads/ww5;

    sget-object v2, Lyads/ww5;->b:Lyads/ww5;

    filled-new-array {v1, v2}, [Lyads/ww5;

    move-result-object v1

    invoke-static {v1}, Lu96;->i([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lyads/cm5;->b:Ljava/util/HashSet;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    new-instance v0, Lyads/yw5;

    sget-object v1, Lyads/cm5;->b:Ljava/util/HashSet;

    invoke-direct {v0, v1}, Lyads/yw5;-><init>(Ljava/util/Set;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lyads/cm5;->a:Lyads/yw5;

    return-void
.end method


# virtual methods
.method public final a(Lyads/p90;)Lyads/bc6;
    .locals 3

    iget v0, p1, Lyads/p90;->i:I

    iget-object p1, p1, Lyads/p90;->g:Lyads/dm5;

    if-eqz p1, :cond_1

    iget-object p1, p1, Lyads/dm5;->a:Ljava/lang/String;

    iget-object p0, p0, Lyads/cm5;->a:Lyads/yw5;

    invoke-virtual {p0, p1}, Lyads/yw5;->a(Ljava/lang/String;)Lyads/q86;

    move-result-object p0

    if-eqz p0, :cond_1

    iget p1, p0, Lyads/q86;->c:F

    sget-object v1, Lyads/p86;->c:Lyads/p86;

    iget-object p0, p0, Lyads/q86;->b:Lyads/p86;

    if-ne v1, p0, :cond_0

    int-to-long v1, v0

    const/high16 p0, 0x42c80000    # 100.0f

    div-float/2addr p1, p0

    long-to-float p0, v1

    mul-float/2addr p1, p0

    float-to-long p0, p1

    long-to-float p1, p0

    :cond_0
    int-to-float p0, v0

    invoke-static {p1, p0}, Ljava/lang/Math;->min(FF)F

    move-result p0

    new-instance p1, Lyads/bc6;

    float-to-long v0, p0

    invoke-direct {p1, v0, v1}, Lyads/bc6;-><init>(J)V

    return-object p1

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method
