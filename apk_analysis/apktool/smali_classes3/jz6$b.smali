.class public final Ljz6$b;
.super Lhy4;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljz6;-><init>(JLrf9;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lhy4<",
        "Lo95$b;",
        "Ljz6$a;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic d:Ljz6;


# direct methods
.method public constructor <init>(Ljz6;J)V
    .locals 0

    iput-object p1, p0, Ljz6$b;->d:Ljz6;

    invoke-direct {p0, p2, p3}, Lhy4;-><init>(J)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 6

    move-object v1, p1

    check-cast v1, Lo95$b;

    check-cast p2, Ljz6$a;

    iget-object p0, p0, Ljz6$b;->d:Ljz6;

    iget-object v0, p0, Ljz6;->b:Lrf9;

    iget-object v2, p2, Ljz6$a;->a:Lx04;

    iget-object v3, p2, Ljz6$a;->b:Ljava/util/Map;

    iget-wide v4, p2, Ljz6$a;->c:J

    invoke-interface/range {v0 .. v5}, Lrf9;->d(Lo95$b;Lx04;Ljava/util/Map;J)V

    return-void
.end method
