.class public final Ld75;
.super Lb1;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ld75$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lb1<",
        "TT;TT;>;"
    }
.end annotation


# instance fields
.field public final c:J

.field public final d:Ljava/util/concurrent/TimeUnit;

.field public final e:Lhe7;


# direct methods
.method public constructor <init>(Le75;JLhe7;)V
    .locals 0

    invoke-direct {p0, p1}, Lb1;-><init>(La75;)V

    iput-wide p2, p0, Ld75;->c:J

    sget-object p1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    iput-object p1, p0, Ld75;->d:Ljava/util/concurrent/TimeUnit;

    iput-object p4, p0, Ld75;->e:Lhe7;

    return-void
.end method


# virtual methods
.method public final d(Lt75;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lt75<",
            "-TT;>;)V"
        }
    .end annotation

    new-instance v0, Ld75$a;

    iget-object v4, p0, Ld75;->d:Ljava/util/concurrent/TimeUnit;

    iget-object v5, p0, Ld75;->e:Lhe7;

    iget-wide v2, p0, Ld75;->c:J

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Ld75$a;-><init>(Lt75;JLjava/util/concurrent/TimeUnit;Lhe7;)V

    iget-object p0, p0, Lb1;->b:Lx75;

    invoke-interface {p0, v0}, Lx75;->a(Lt75;)V

    return-void
.end method
