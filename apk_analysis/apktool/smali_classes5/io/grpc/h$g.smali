.class public final Lio/grpc/h$g;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "g"
.end annotation


# static fields
.field public static final e:Lio/grpc/h$g;


# instance fields
.field public final a:Lio/grpc/h$j;

.field public final b:Lio/grpc/c$a;

.field public final c:Lh88;

.field public final d:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lio/grpc/h$g;

    sget-object v1, Lh88;->e:Lh88;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, v3, v1, v2}, Lio/grpc/h$g;-><init>(Lio/grpc/h$j;Lh88;Z)V

    sput-object v0, Lio/grpc/h$g;->e:Lio/grpc/h$g;

    return-void
.end method

.method public constructor <init>(Lio/grpc/h$j;Lh88;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/grpc/h$g;->a:Lio/grpc/h$j;

    const/4 p1, 0x0

    iput-object p1, p0, Lio/grpc/h$g;->b:Lio/grpc/c$a;

    const-string p1, "status"

    invoke-static {p2, p1}, Lo8;->l(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object p2, p0, Lio/grpc/h$g;->c:Lh88;

    iput-boolean p3, p0, Lio/grpc/h$g;->d:Z

    return-void
.end method

.method public constructor <init>(Lio/grpc/h$j;Lio/grpc/c$a;Lh88;Z)V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lio/grpc/h$g;->a:Lio/grpc/h$j;

    .line 20
    iput-object p2, p0, Lio/grpc/h$g;->b:Lio/grpc/c$a;

    .line 21
    const-string p1, "status"

    invoke-static {p3, p1}, Lo8;->l(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object p3, p0, Lio/grpc/h$g;->c:Lh88;

    .line 22
    iput-boolean p4, p0, Lio/grpc/h$g;->d:Z

    return-void
.end method

.method public static a(Lh88;)Lio/grpc/h$g;
    .locals 3

    invoke-virtual {p0}, Lh88;->f()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    const-string v1, "error status shouldn\'t be OK"

    invoke-static {v0, v1}, Lo8;->f(ZLjava/lang/Object;)V

    new-instance v0, Lio/grpc/h$g;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, v1, p0, v2}, Lio/grpc/h$g;-><init>(Lio/grpc/h$j;Lh88;Z)V

    return-object v0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    instance-of v0, p1, Lio/grpc/h$g;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    check-cast p1, Lio/grpc/h$g;

    iget-object v0, p0, Lio/grpc/h$g;->a:Lio/grpc/h$j;

    iget-object v1, p1, Lio/grpc/h$g;->a:Lio/grpc/h$j;

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lio/grpc/h$g;->c:Lh88;

    iget-object v1, p1, Lio/grpc/h$g;->c:Lh88;

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lio/grpc/h$g;->b:Lio/grpc/c$a;

    iget-object v1, p1, Lio/grpc/h$g;->b:Lio/grpc/c$a;

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean p0, p0, Lio/grpc/h$g;->d:Z

    iget-boolean p1, p1, Lio/grpc/h$g;->d:Z

    if-ne p0, p1, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public final hashCode()I
    .locals 3

    iget-boolean v0, p0, Lio/grpc/h$g;->d:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iget-object v1, p0, Lio/grpc/h$g;->a:Lio/grpc/h$j;

    iget-object v2, p0, Lio/grpc/h$g;->c:Lh88;

    iget-object p0, p0, Lio/grpc/h$g;->b:Lio/grpc/c$a;

    filled-new-array {v1, v2, p0, v0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    invoke-static {p0}, Lod5;->b(Ljava/lang/Object;)Lod5$a;

    move-result-object v0

    const-string v1, "subchannel"

    iget-object v2, p0, Lio/grpc/h$g;->a:Lio/grpc/h$j;

    invoke-virtual {v0, v2, v1}, Lod5$a;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "streamTracerFactory"

    iget-object v2, p0, Lio/grpc/h$g;->b:Lio/grpc/c$a;

    invoke-virtual {v0, v2, v1}, Lod5$a;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "status"

    iget-object v2, p0, Lio/grpc/h$g;->c:Lh88;

    invoke-virtual {v0, v2, v1}, Lod5$a;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "drop"

    iget-boolean p0, p0, Lio/grpc/h$g;->d:Z

    invoke-virtual {v0, v1, p0}, Lod5$a;->c(Ljava/lang/String;Z)V

    const-string p0, "authority-override"

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p0}, Lod5$a;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lod5$a;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
