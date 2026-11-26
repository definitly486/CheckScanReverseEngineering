.class public final Lv78;
.super Lgh4;
.source "SourceFile"

# interfaces
.implements Lbm3;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lgh4;",
        "Lbm3<",
        "Ljava/lang/Integer;",
        "Lb36<",
        "Ljava/lang/Object;",
        "+",
        "Ljava/lang/Long;",
        ">;",
        "Ldk8$a;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic f:Lw78;

.field public final synthetic g:J


# direct methods
.method public constructor <init>(Lw78;J)V
    .locals 0

    iput-object p1, p0, Lv78;->f:Lw78;

    iput-wide p2, p0, Lv78;->g:J

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lgh4;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    check-cast p2, Lb36;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iget-object p2, p2, Lb36;->b:Ljava/lang/Object;

    iget-wide v0, p0, Lv78;->g:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iget-object p0, p0, Lv78;->f:Lw78;

    invoke-virtual {p0, p1, p2, v0}, Lw78;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ldk8$a;

    return-object p0
.end method
