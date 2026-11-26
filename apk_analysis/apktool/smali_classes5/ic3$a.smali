.class public final Lic3$a;
.super Lio/grpc/h;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lic3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "a"
.end annotation


# instance fields
.field public final f:Lio/grpc/h$e;

.field public final synthetic g:Lic3;


# direct methods
.method public constructor <init>(Lic3;Lio/grpc/h$e;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lic3$a;->g:Lic3;

    const-string p1, "helper"

    invoke-static {p2, p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iput-object p2, p0, Lic3$a;->f:Lio/grpc/h$e;

    return-void
.end method


# virtual methods
.method public final a(Lio/grpc/h$i;)Lh88;
    .locals 2

    iget-object p1, p0, Lic3$a;->g:Lic3;

    iget-object v0, p1, Lic3;->b:Lcx1;

    iget-object v1, p1, Lic3;->c:Lio/grpc/h$d;

    iget-object p0, p0, Lic3$a;->f:Lio/grpc/h$e;

    invoke-virtual {p0, v0, v1}, Lio/grpc/h$e;->f(Lcx1;Lio/grpc/h$k;)V

    iget-object p0, p1, Lic3;->d:Lh88;

    return-object p0
.end method

.method public final b(Lh88;)V
    .locals 1

    iget-object p1, p0, Lic3$a;->g:Lic3;

    iget-object v0, p1, Lic3;->b:Lcx1;

    iget-object p1, p1, Lic3;->c:Lio/grpc/h$d;

    iget-object p0, p0, Lic3$a;->f:Lio/grpc/h$e;

    invoke-virtual {p0, v0, p1}, Lio/grpc/h$e;->f(Lcx1;Lio/grpc/h$k;)V

    return-void
.end method

.method public final d()V
    .locals 0

    return-void
.end method
