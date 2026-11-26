.class public final Lyads/fn0;
.super Lgh4;
.source "SourceFile"

# interfaces
.implements Lnl3;


# instance fields
.field public final synthetic b:Lyads/h2;

.field public final synthetic c:J


# direct methods
.method public constructor <init>(Lyads/h2;J)V
    .locals 0

    iput-object p1, p0, Lyads/fn0;->b:Lyads/h2;

    iput-wide p2, p0, Lyads/fn0;->c:J

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lgh4;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    check-cast p1, Ljava/lang/Throwable;

    iget-object p1, p0, Lyads/fn0;->b:Lyads/h2;

    iget-wide v0, p0, Lyads/fn0;->c:J

    invoke-virtual {p1, v0, v1}, Lyads/h2;->a(J)Lyads/f2;

    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method
