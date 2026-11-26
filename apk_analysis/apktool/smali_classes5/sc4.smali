.class public final Lsc4;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lcw2;

.field public b:Z


# direct methods
.method public constructor <init>(Lmp7;)V
    .locals 8

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcw2;

    new-instance v1, Lsc4$a;

    const-string v6, "readIfAbsent(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z"

    const/4 v7, 0x0

    const/4 v2, 0x2

    const-class v4, Lsc4;

    const-string v5, "readIfAbsent"

    move-object v3, p0

    invoke-direct/range {v1 .. v7}, Lqm3;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-direct {v0, p1, v1}, Lcw2;-><init>(Lmp7;Lsc4$a;)V

    iput-object v0, v3, Lsc4;->a:Lcw2;

    return-void
.end method
