.class public final Le86$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/grpc/h$l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le86;->a(Lio/grpc/h$i;)Lh88;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lio/grpc/h$j;

.field public final synthetic b:Le86;


# direct methods
.method public constructor <init>(Le86;Lio/grpc/h$j;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le86$a;->b:Le86;

    iput-object p2, p0, Le86$a;->a:Lio/grpc/h$j;

    return-void
.end method


# virtual methods
.method public final a(Ldx1;)V
    .locals 6

    iget-object v0, p0, Le86$a;->b:Le86;

    iget-object v1, v0, Le86;->f:Lio/grpc/h$e;

    iget-object v2, p1, Ldx1;->a:Lcx1;

    sget-object v3, Lcx1;->SHUTDOWN:Lcx1;

    if-ne v2, v3, :cond_0

    goto :goto_0

    :cond_0
    sget-object v3, Lcx1;->TRANSIENT_FAILURE:Lcx1;

    if-eq v2, v3, :cond_1

    sget-object v4, Lcx1;->IDLE:Lcx1;

    if-ne v2, v4, :cond_2

    :cond_1
    invoke-virtual {v1}, Lio/grpc/h$e;->e()V

    :cond_2
    iget-object v4, v0, Le86;->h:Lcx1;

    if-ne v4, v3, :cond_4

    sget-object v3, Lcx1;->CONNECTING:Lcx1;

    if-ne v2, v3, :cond_3

    :goto_0
    return-void

    :cond_3
    sget-object v3, Lcx1;->IDLE:Lcx1;

    if-ne v2, v3, :cond_4

    invoke-virtual {v0}, Le86;->c()V

    return-void

    :cond_4
    sget-object v3, Le86$b;->a:[I

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aget v3, v3, v4

    const/4 v4, 0x1

    if-eq v3, v4, :cond_8

    const/4 v4, 0x2

    if-eq v3, v4, :cond_7

    const/4 v4, 0x3

    if-eq v3, v4, :cond_6

    const/4 p0, 0x4

    if-ne v3, p0, :cond_5

    new-instance p0, Lio/grpc/h$d;

    iget-object p1, p1, Ldx1;->b:Lh88;

    invoke-static {p1}, Lio/grpc/h$g;->a(Lh88;)Lio/grpc/h$g;

    move-result-object p1

    invoke-direct {p0, p1}, Lio/grpc/h$d;-><init>(Lio/grpc/h$g;)V

    goto :goto_1

    :cond_5
    const-string p0, "Unsupported state:"

    invoke-static {v2, p0}, Lr01;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    :cond_6
    new-instance p1, Lio/grpc/h$d;

    new-instance v3, Lio/grpc/h$g;

    const-string v4, "subchannel"

    iget-object p0, p0, Le86$a;->a:Lio/grpc/h$j;

    invoke-static {p0, v4}, Lo8;->l(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object v4, Lh88;->e:Lh88;

    const/4 v5, 0x0

    invoke-direct {v3, p0, v4, v5}, Lio/grpc/h$g;-><init>(Lio/grpc/h$j;Lh88;Z)V

    invoke-direct {p1, v3}, Lio/grpc/h$d;-><init>(Lio/grpc/h$g;)V

    move-object p0, p1

    goto :goto_1

    :cond_7
    new-instance p0, Lio/grpc/h$d;

    sget-object p1, Lio/grpc/h$g;->e:Lio/grpc/h$g;

    invoke-direct {p0, p1}, Lio/grpc/h$d;-><init>(Lio/grpc/h$g;)V

    goto :goto_1

    :cond_8
    new-instance p0, Le86$d;

    invoke-direct {p0, v0}, Le86$d;-><init>(Le86;)V

    :goto_1
    iput-object v2, v0, Le86;->h:Lcx1;

    invoke-virtual {v1, v2, p0}, Lio/grpc/h$e;->f(Lcx1;Lio/grpc/h$k;)V

    return-void
.end method
