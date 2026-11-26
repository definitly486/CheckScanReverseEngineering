.class public abstract Lyads/e;
.super Lyads/u13;
.source "SourceFile"


# static fields
.field public static final c:Ljava/util/Set;


# instance fields
.field public final a:Lyads/xo2;

.field public final b:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/16 v0, 0x23

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    const/16 v1, 0x30

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const/16 v2, 0x2c

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    const/16 v3, 0x2e

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/Character;

    move-result-object v0

    invoke-static {v0}, Lyr;->k0([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lyads/e;->c:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lyads/u13;-><init>()V

    sget-object v0, Lyads/xo2;->f:Lyads/xo2;

    iput-object v0, p0, Lyads/e;->a:Lyads/xo2;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lyads/e;->b:Z

    return-void
.end method

.method public static final a(Ljava/lang/Object;)Ljava/lang/CharSequence;
    .locals 0

    .line 91
    invoke-static {p0}, Lyads/wo2;->b(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final a(Lyads/yo2;Lyads/uo2;Ljava/util/List;)Ljava/lang/Object;
    .locals 6

    const/4 p1, 0x0

    invoke-interface {p3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lyads/e;->b(Ljava/lang/Object;)Ljava/lang/Number;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {p3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p0, p3}, Lyads/e;->c(Ljava/util/List;)Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_2

    :goto_0
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-ge p1, v3, :cond_1

    invoke-virtual {v1, p1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    sget-object v5, Lyads/e;->c:Ljava/util/Set;

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v5, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p2, p3, v4}, Lyads/e;->a(Lyads/uo2;Ljava/util/List;Ljava/lang/Exception;)V

    throw v4

    :cond_1
    invoke-static {v2}, Ljava/text/DecimalFormatSymbols;->getInstance(Ljava/util/Locale;)Ljava/text/DecimalFormatSymbols;

    move-result-object p1

    :try_start_0
    new-instance v2, Ljava/text/DecimalFormat;

    invoke-direct {v2, v1, p1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;Ljava/text/DecimalFormatSymbols;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {p0, v2, v0}, Lyads/e;->a(Ljava/text/DecimalFormat;Ljava/lang/Number;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :catch_0
    move-exception p1

    invoke-virtual {p0, p2, p3, p1}, Lyads/e;->a(Lyads/uo2;Ljava/util/List;Ljava/lang/Exception;)V

    throw v4

    :cond_2
    invoke-virtual {p0, p2, p3, v4}, Lyads/e;->a(Lyads/uo2;Ljava/util/List;Ljava/lang/Exception;)V

    throw v4
.end method

.method public abstract a(Ljava/text/DecimalFormat;Ljava/lang/Number;)Ljava/lang/String;
.end method

.method public final a(Ljava/util/List;Z)Ljava/lang/String;
    .locals 7

    .line 87
    invoke-static {p1, p2}, Lqn1;->O(Ljava/lang/Iterable;I)Ljava/util/List;

    move-result-object v0

    .line 88
    invoke-virtual {p0}, Lyads/u13;->c()Ljava/lang/String;

    move-result-object p0

    const-string p1, "("

    .line 89
    invoke-static {p0, p1}, Lni0;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 90
    new-instance v5, Lt2;

    const/4 p0, 0x4

    invoke-direct {v5, p0}, Lt2;-><init>(I)V

    const/4 v4, 0x0

    const/16 v6, 0x19

    const/4 v1, 0x0

    const-string v3, ")"

    invoke-static/range {v0 .. v6}, Lqn1;->a0(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;ILnl3;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final a(Lyads/uo2;Ljava/util/List;Ljava/lang/Exception;)V
    .locals 1

    .line 82
    instance-of p1, p1, Lyads/no2;

    .line 83
    invoke-virtual {p0, p2, p1}, Lyads/e;->a(Ljava/util/List;Z)Ljava/lang/String;

    move-result-object p0

    .line 84
    new-instance p1, Lyads/vo2;

    const-string p2, "Failed to evaluate ["

    const-string v0, "]. Incorrect format pattern."

    .line 85
    invoke-static {p2, p0, v0}, Lme0;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 86
    invoke-direct {p1, p3, p0}, Lyads/vo2;-><init>(Ljava/lang/Exception;Ljava/lang/String;)V

    throw p1
.end method

.method public abstract b(Ljava/lang/Object;)Ljava/lang/Number;
.end method

.method public abstract c(Ljava/util/List;)Ljava/util/Locale;
.end method

.method public final d()Lyads/xo2;
    .locals 0

    iget-object p0, p0, Lyads/e;->a:Lyads/xo2;

    return-object p0
.end method

.method public final e()Z
    .locals 0

    iget-boolean p0, p0, Lyads/e;->b:Z

    return p0
.end method
