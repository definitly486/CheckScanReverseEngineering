.class public final Lyads/tb6;
.super Lsr5;
.source "SourceFile"


# instance fields
.field public final synthetic a:Lyads/ub6;


# direct methods
.method public constructor <init>(Lyads/ub6;)V
    .locals 0

    iput-object p1, p0, Lyads/tb6;->a:Lyads/ub6;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lsr5;-><init>(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final afterChange(Lze4;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p3, Lyads/vh3;

    check-cast p2, Lyads/vh3;

    iget-object p0, p0, Lyads/tb6;->a:Lyads/ub6;

    iget-object p0, p0, Lyads/ub6;->d:Lyads/xb6;

    iput-object p3, p0, Lyads/xb6;->d:Lyads/vh3;

    return-void
.end method
