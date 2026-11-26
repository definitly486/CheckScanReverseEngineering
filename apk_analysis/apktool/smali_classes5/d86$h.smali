.class public final Ld86$h;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ld86;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "h"
.end annotation


# instance fields
.field public final a:Lio/grpc/h$j;

.field public b:Lcx1;

.field public c:Z

.field public d:Ldx1;


# direct methods
.method public constructor <init>(Lio/grpc/h$j;Lcx1;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Ld86$h;->c:Z

    sget-object v0, Lcx1;->IDLE:Lcx1;

    invoke-static {v0}, Ldx1;->a(Lcx1;)Ldx1;

    move-result-object v0

    iput-object v0, p0, Ld86$h;->d:Ldx1;

    iput-object p1, p0, Ld86$h;->a:Lio/grpc/h$j;

    iput-object p2, p0, Ld86$h;->b:Lcx1;

    return-void
.end method


# virtual methods
.method public final a(Lcx1;)V
    .locals 1

    iput-object p1, p0, Ld86$h;->b:Lcx1;

    sget-object v0, Lcx1;->READY:Lcx1;

    if-eq p1, v0, :cond_2

    sget-object v0, Lcx1;->TRANSIENT_FAILURE:Lcx1;

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    sget-object v0, Lcx1;->IDLE:Lcx1;

    if-ne p1, v0, :cond_1

    const/4 p1, 0x0

    iput-boolean p1, p0, Ld86$h;->c:Z

    :cond_1
    return-void

    :cond_2
    :goto_0
    const/4 p1, 0x1

    iput-boolean p1, p0, Ld86$h;->c:Z

    return-void
.end method
