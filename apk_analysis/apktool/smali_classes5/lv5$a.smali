.class public final Llv5$a;
.super Lu1;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Llv5;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lu1;"
    }
.end annotation


# instance fields
.field public final synthetic c:Llv5;


# direct methods
.method public constructor <init>(Llv5;)V
    .locals 1

    iput-object p1, p0, Llv5$a;->c:Llv5;

    const/4 p1, 0x4

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lu1;-><init>(IB)V

    return-void
.end method


# virtual methods
.method public final h()V
    .locals 1

    iget-object p0, p0, Llv5$a;->c:Llv5;

    iget-object p0, p0, Llv5;->j:Lp94$f;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lp94$f;->c(Z)V

    return-void
.end method

.method public final i()V
    .locals 1

    iget-object p0, p0, Llv5$a;->c:Llv5;

    iget-object p0, p0, Llv5;->j:Lp94$f;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lp94$f;->c(Z)V

    return-void
.end method
