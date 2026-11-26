.class public final Lpib;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Loh9;
.implements Lrxa;


# static fields
.field public static final c:Llib;

.field public static final synthetic d:Lpib;

.field public static final synthetic e:Lpib;

.field public static final synthetic f:Lpib;


# instance fields
.field public final synthetic b:I


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 2

    new-instance v0, Llib;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lpib;->c:Llib;

    new-instance v0, Lpib;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Lpib;-><init>(I)V

    sput-object v0, Lpib;->d:Lpib;

    new-instance v0, Lpib;

    const/4 v1, 0x6

    invoke-direct {v0, v1}, Lpib;-><init>(I)V

    sput-object v0, Lpib;->e:Lpib;

    new-instance v0, Lpib;

    const/4 v1, 0x7

    invoke-direct {v0, v1}, Lpib;-><init>(I)V

    sput-object v0, Lpib;->f:Lpib;

    return-void
.end method

.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Lpib;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final a(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/util/concurrent/CancellationException;
    .locals 1

    new-instance v0, Ljava/util/concurrent/CancellationException;

    invoke-direct {v0, p0}, Ljava/util/concurrent/CancellationException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    return-object v0
.end method

.method public static final varargs b(Lzl5;[Llk3;)V
    .locals 4

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lc00;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lc00;-><init>(Ldf7;)V

    new-instance v1, Ll27;

    invoke-static {p1}, Lyr;->I([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ldf7;

    invoke-direct {v1, v2}, Ll27;-><init>(Ldf7;)V

    const/4 v2, 0x2

    new-array v2, v2, [Lso1;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const/4 v0, 0x1

    aput-object v1, v2, v0

    invoke-static {v0, p1}, Lyr;->F(I[Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    check-cast p1, Ljava/lang/Iterable;

    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-static {p1, v1}, Lkn1;->q(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Llk3;

    new-instance v3, Lxi3;

    invoke-direct {v3, v1}, Lxi3;-><init>(Ldf7;)V

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-static {v0, v2}, Laq5;->z(Ljava/util/Collection;[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lso1;

    invoke-interface {p0, p1}, Lzl5;->a([Lso1;)V

    return-void
.end method


# virtual methods
.method public synthetic zza()Ljava/lang/Object;
    .locals 2

    iget p0, p0, Lpib;->b:I

    packed-switch p0, :pswitch_data_0

    sget-object p0, Lcom/google/android/gms/measurement/internal/zzfy;->a:Ljava/util/List;

    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzags;->zzZ()J

    move-result-wide v0

    long-to-int p0, v0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :pswitch_0
    sget-object p0, Lcom/google/android/gms/measurement/internal/zzfy;->a:Ljava/util/List;

    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzags;->zzar()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0

    :pswitch_1
    sget-object p0, Lcom/google/android/gms/measurement/internal/zzfy;->a:Ljava/util/List;

    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzags;->zzaq()J

    move-result-wide v0

    long-to-int p0, v0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
