.class public final Lyads/bg6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;
.implements Ljava/lang/Comparable;


# static fields
.field public static final synthetic e:[Lze4;


# instance fields
.field public final b:I

.field public final c:Ljava/lang/String;

.field public final d:Lyads/uj6;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const-class v0, Lyads/bg6;

    const-string v1, "channelRef"

    const-string v2, "getChannelRef()Lcom/yandex/div/internal/viewpool/AdvanceViewPool$Channel;"

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lyads/cb;->a(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)Lbf4;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Lze4;

    aput-object v0, v1, v3

    sput-object v1, Lyads/bg6;->e:[Lze4;

    return-void
.end method

.method public constructor <init>(Lyads/cd;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lyads/bg6;->b:I

    iget-object p2, p1, Lyads/cd;->a:Ljava/lang/String;

    iput-object p2, p0, Lyads/bg6;->c:Ljava/lang/String;

    new-instance p2, Lyads/uj6;

    invoke-direct {p2, p1}, Lyads/uj6;-><init>(Lyads/cd;)V

    iput-object p2, p0, Lyads/bg6;->d:Lyads/uj6;

    return-void
.end method


# virtual methods
.method public final compareTo(Ljava/lang/Object;)I
    .locals 2

    check-cast p1, Lyads/bg6;

    iget v0, p0, Lyads/bg6;->b:I

    iget v1, p1, Lyads/bg6;->b:I

    sub-int/2addr v0, v1

    if-eqz v0, :cond_0

    return v0

    :cond_0
    iget-object p0, p0, Lyads/bg6;->c:Ljava/lang/String;

    iget-object p1, p1, Lyads/bg6;->c:Ljava/lang/String;

    invoke-static {p0, p1}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    const-class v2, Lyads/bg6;

    invoke-virtual {v2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_2

    return v2

    :cond_2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p1, Lyads/bg6;

    iget-object v1, p0, Lyads/bg6;->c:Ljava/lang/String;

    iget-object v3, p1, Lyads/bg6;->c:Ljava/lang/String;

    invoke-static {v1, v3}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget p0, p0, Lyads/bg6;->b:I

    iget p1, p1, Lyads/bg6;->b:I

    if-eq p0, p1, :cond_4

    return v2

    :cond_4
    return v0
.end method

.method public final hashCode()I
    .locals 1

    iget v0, p0, Lyads/bg6;->b:I

    add-int/lit16 v0, v0, 0x1b01

    mul-int/lit8 v0, v0, 0x1f

    iget-object p0, p0, Lyads/bg6;->c:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public final run()V
    .locals 3

    iget-object v0, p0, Lyads/bg6;->d:Lyads/uj6;

    sget-object v1, Lyads/bg6;->e:[Lze4;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v0, p0, v1}, Lyads/uj6;->getValue(Ljava/lang/Object;Lze4;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lyads/cd;

    if-eqz p0, :cond_0

    iget-object v0, p0, Lyads/cd;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lyads/cd;->c:Lyads/gg6;

    invoke-interface {v0}, Lyads/gg6;->a()Landroid/view/View;

    move-result-object v0

    iget-object p0, p0, Lyads/cd;->e:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {p0, v0}, Ljava/util/concurrent/LinkedBlockingQueue;->offer(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method
