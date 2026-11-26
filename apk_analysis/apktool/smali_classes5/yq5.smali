.class public final Lyq5;
.super Lg1;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lyq5$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lg1<",
        "TT;TT;>;"
    }
.end annotation


# instance fields
.field public final c:J

.field public final d:Ljava/util/concurrent/TimeUnit;

.field public final e:Lhe7;


# direct methods
.method public constructor <init>(Lhi0;Lhe7;)V
    .locals 2

    invoke-direct {p0, p1}, Lg1;-><init>(Lwr5;)V

    const-wide/16 v0, 0xc8

    iput-wide v0, p0, Lyq5;->c:J

    sget-object p1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    iput-object p1, p0, Lyq5;->d:Ljava/util/concurrent/TimeUnit;

    iput-object p2, p0, Lyq5;->e:Lhe7;

    return-void
.end method


# virtual methods
.method public final f(Lls5;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lls5<",
            "-TT;>;)V"
        }
    .end annotation

    new-instance v1, Lcq7;

    invoke-direct {v1, p1}, Lcq7;-><init>(Lls5;)V

    iget-object p1, p0, Lyq5;->e:Lhe7;

    invoke-virtual {p1}, Lhe7;->b()Lhe7$c;

    move-result-object v5

    new-instance v0, Lyq5$a;

    iget-wide v2, p0, Lyq5;->c:J

    iget-object v4, p0, Lyq5;->d:Ljava/util/concurrent/TimeUnit;

    invoke-direct/range {v0 .. v5}, Lyq5$a;-><init>(Lls5;JLjava/util/concurrent/TimeUnit;Lhe7$c;)V

    iget-object p0, p0, Lg1;->b:Lwr5;

    invoke-interface {p0, v0}, Lwr5;->a(Lls5;)V

    return-void
.end method
