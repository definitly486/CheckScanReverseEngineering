.class public final Lp94$c$a;
.super Lzi3;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lp94$c;->b(Lra5;Lla5;Lio/grpc/b;[Lio/grpc/c;)Lcm1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lcm1;

.field public final synthetic c:Lp94$c;


# direct methods
.method public constructor <init>(Lp94$c;Lcm1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lp94$c$a;->c:Lp94$c;

    iput-object p2, p0, Lp94$c$a;->b:Lcm1;

    return-void
.end method


# virtual methods
.method public final i(Ldm1;)V
    .locals 2

    iget-object v0, p0, Lp94$c$a;->c:Lp94$c;

    iget-object v0, v0, Lp94$c;->b:Lpy0;

    iget-object v1, v0, Lpy0;->b:Ltv4;

    invoke-interface {v1}, Ltv4;->a()V

    iget-object v0, v0, Lpy0;->a:Lpv8;

    invoke-interface {v0}, Lpv8;->b()J

    new-instance v0, Lp94$c$a$a;

    invoke-direct {v0, p0, p1}, Lp94$c$a$a;-><init>(Lp94$c$a;Ldm1;)V

    iget-object p0, p0, Lp94$c$a;->b:Lcm1;

    invoke-interface {p0, v0}, Lcm1;->i(Ldm1;)V

    return-void
.end method
