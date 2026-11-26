.class public final Lic3;
.super Lio/grpc/i;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lic3$a;
    }
.end annotation


# instance fields
.field public final b:Lcx1;

.field public final c:Lio/grpc/h$d;

.field public final d:Lh88;


# direct methods
.method public constructor <init>(Lcx1;Lio/grpc/h$d;Lh88;)V
    .locals 1

    invoke-direct {p0}, Lio/grpc/i;-><init>()V

    const-string v0, "state"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iput-object p1, p0, Lic3;->b:Lcx1;

    iput-object p2, p0, Lic3;->c:Lio/grpc/h$d;

    iput-object p3, p0, Lic3;->d:Lh88;

    return-void
.end method


# virtual methods
.method public final a(Lio/grpc/h$e;)Lio/grpc/h;
    .locals 1

    new-instance v0, Lic3$a;

    invoke-direct {v0, p0, p1}, Lic3$a;-><init>(Lic3;Lio/grpc/h$e;)V

    return-object v0
.end method

.method public final b()Ljava/lang/String;
    .locals 0

    const-string p0, "fixed_picker_lb_internal"

    return-object p0
.end method
