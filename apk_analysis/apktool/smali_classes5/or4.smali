.class public final Lor4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lrxa;


# static fields
.field public static final synthetic c:Lor4;

.field public static final synthetic d:Lor4;


# instance fields
.field public final synthetic b:I


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 2

    new-instance v0, Lor4;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lor4;-><init>(I)V

    sput-object v0, Lor4;->c:Lor4;

    new-instance v0, Lor4;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lor4;-><init>(I)V

    sput-object v0, Lor4;->d:Lor4;

    return-void
.end method

.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Lor4;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final a(Ljava/util/List;II)Ljava/util/List;
    .locals 1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-le p2, v0, :cond_0

    move p2, v0

    :cond_0
    invoke-interface {p0, p1, p2}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static final b(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Lhs;Ljava/lang/String;Z)La46;
    .locals 8

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    add-int/2addr p0, p5

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    if-eqz p5, :cond_1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    const p1, 0x7fffffff

    :cond_1
    :goto_0
    if-eqz p2, :cond_2

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    goto :goto_1

    :cond_2
    const/4 p2, 0x0

    :goto_1
    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result v0

    if-lt p0, v0, :cond_3

    invoke-static {p5, p3, p4, p0, p1}, Lor4;->c(ZLhs;Ljava/lang/String;II)La46;

    move-result-object p0

    return-object p0

    :cond_3
    invoke-static {p5, p3, p4, p0, p0}, Lor4;->c(ZLhs;Ljava/lang/String;II)La46;

    move-result-object v1

    :goto_2
    const-string v2, " "

    sget-object v3, Lkx2;->b:Lkx2;

    if-ge p0, v0, :cond_4

    new-instance v4, La46;

    add-int/lit8 p0, p0, 0x1

    invoke-static {p5, p3, p4, p0, p0}, Lor4;->c(ZLhs;Ljava/lang/String;II)La46;

    move-result-object v5

    new-instance v6, La46;

    new-instance v7, Lw86;

    invoke-direct {v7, v2}, Lw86;-><init>(Ljava/lang/String;)V

    invoke-static {v7}, Lu96;->h(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v6, v2, v3}, La46;-><init>(Ljava/util/List;Ljava/util/List;)V

    filled-new-array {v6, v1}, [La46;

    move-result-object v1

    invoke-static {v1}, Lu96;->i([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Lxs7;->a(Ljava/util/List;)La46;

    move-result-object v1

    filled-new-array {v5, v1}, [La46;

    move-result-object v1

    invoke-static {v1}, Lu96;->i([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v4, v3, v1}, La46;-><init>(Ljava/util/List;Ljava/util/List;)V

    move-object v1, v4

    goto :goto_2

    :cond_4
    if-le p2, p1, :cond_5

    new-instance p0, Lw86;

    sub-int/2addr p2, p1

    invoke-static {p2, v2}, Lra8;->x(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lw86;-><init>(Ljava/lang/String;)V

    new-instance p1, La46;

    invoke-static {p0}, Lu96;->h(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-direct {p1, p0, v3}, La46;-><init>(Ljava/util/List;Ljava/util/List;)V

    filled-new-array {p1, v1}, [La46;

    move-result-object p0

    invoke-static {p0}, Lu96;->i([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-static {p0}, Lxs7;->a(Ljava/util/List;)La46;

    move-result-object p0

    return-object p0

    :cond_5
    if-ne p2, p1, :cond_6

    return-object v1

    :cond_6
    new-instance p0, La46;

    add-int/lit8 p2, p2, 0x1

    invoke-static {p5, p3, p4, p2, p1}, Lor4;->c(ZLhs;Ljava/lang/String;II)La46;

    move-result-object p1

    filled-new-array {p1, v1}, [La46;

    move-result-object p1

    invoke-static {p1}, Lu96;->i([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-direct {p0, v3, p1}, La46;-><init>(Ljava/util/List;Ljava/util/List;)V

    return-object p0
.end method

.method public static final c(ZLhs;Ljava/lang/String;II)La46;
    .locals 8

    add-int/lit8 v0, p0, 0x1

    if-lt p4, v0, :cond_1

    invoke-static {}, Lu96;->e()Lar4;

    move-result-object v0

    if-eqz p0, :cond_0

    new-instance v1, Lw86;

    const-string v2, "-"

    invoke-direct {v1, v2}, Lw86;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lar4;->add(Ljava/lang/Object;)Z

    :cond_0
    new-instance v1, Lhq5;

    new-instance v2, Lk79;

    sub-int/2addr p3, p0

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    sub-int/2addr p4, p0

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move v7, p0

    move-object v5, p1

    move-object v6, p2

    invoke-direct/range {v2 .. v7}, Lk79;-><init>(Ljava/lang/Integer;Ljava/lang/Integer;Lhs;Ljava/lang/String;Z)V

    invoke-static {v2}, Lu96;->h(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-direct {v1, p0}, Lhq5;-><init>(Ljava/util/List;)V

    invoke-virtual {v0, v1}, Lar4;->add(Ljava/lang/Object;)Z

    invoke-static {v0}, Lu96;->d(Lar4;)Lar4;

    move-result-object p0

    new-instance p1, La46;

    sget-object p2, Lkx2;->b:Lkx2;

    invoke-direct {p1, p0, p2}, La46;-><init>(Ljava/util/List;Ljava/util/List;)V

    return-object p1

    :cond_1
    const-string p0, "Check failed."

    invoke-static {p0}, Lah;->f(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public synthetic zza()Ljava/lang/Object;
    .locals 2

    iget p0, p0, Lor4;->b:I

    packed-switch p0, :pswitch_data_0

    sget-object p0, Lcom/google/android/gms/measurement/internal/zzfy;->a:Ljava/util/List;

    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzajd;->zza()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :pswitch_0
    sget-object p0, Lcom/google/android/gms/measurement/internal/zzfy;->a:Ljava/util/List;

    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzaic;->zzb()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method
