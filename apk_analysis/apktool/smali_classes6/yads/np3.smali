.class public final Lyads/np3;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lyads/fp3;

.field public final b:Lyads/q25;

.field public final c:Lyads/fw3;

.field public final d:Lyads/aw3;

.field public final e:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final f:Lcl4;


# direct methods
.method public constructor <init>(Lyads/fp3;Lyads/q25;Lyads/fw3;Lyads/aw3;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lyads/np3;->a:Lyads/fp3;

    iput-object p2, p0, Lyads/np3;->b:Lyads/q25;

    iput-object p3, p0, Lyads/np3;->c:Lyads/fw3;

    iput-object p4, p0, Lyads/np3;->d:Lyads/aw3;

    new-instance p3, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p4, 0x0

    invoke-direct {p3, p4}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p3, p0, Lyads/np3;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance p3, Lap1;

    const/4 p4, 0x5

    invoke-direct {p3, p0, p4}, Lap1;-><init>(Ljava/lang/Object;I)V

    new-instance p4, Lfh8;

    invoke-direct {p4, p3}, Lfh8;-><init>(Lll3;)V

    iput-object p4, p0, Lyads/np3;->f:Lcl4;

    iput-object p2, p1, Lyads/d13;->l:Lyads/v03;

    return-void
.end method

.method public static final a(Lyads/np3;)Lyads/i70;
    .locals 0

    iget-object p0, p0, Lyads/np3;->a:Lyads/fp3;

    invoke-virtual {p0}, Lyads/d13;->d()Lyads/i70;

    move-result-object p0

    return-object p0
.end method
