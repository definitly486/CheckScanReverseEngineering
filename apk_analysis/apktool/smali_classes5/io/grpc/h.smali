.class public abstract Lio/grpc/h;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/grpc/h$d;,
        Lio/grpc/h$c;,
        Lio/grpc/h$l;,
        Lio/grpc/h$j;,
        Lio/grpc/h$e;,
        Lio/grpc/h$b;,
        Lio/grpc/h$g;,
        Lio/grpc/h$f;,
        Lio/grpc/h$h;,
        Lio/grpc/h$k;,
        Lio/grpc/h$i;
    }
.end annotation


# static fields
.field public static final a:Lio/grpc/a$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/grpc/a$b<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;>;"
        }
    .end annotation
.end field

.field public static final b:Lio/grpc/h$b$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/grpc/h$b$b<",
            "Lio/grpc/h$l;",
            ">;"
        }
    .end annotation
.end field

.field public static final c:Lio/grpc/h$b$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/grpc/h$b$b<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public static final d:Lio/grpc/a$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/grpc/a$b<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public static final e:Lio/grpc/a$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/grpc/a$b<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lio/grpc/a$b;

    const-string v1, "internal:health-checking-config"

    invoke-direct {v0, v1}, Lio/grpc/a$b;-><init>(Ljava/lang/String;)V

    sput-object v0, Lio/grpc/h;->a:Lio/grpc/a$b;

    new-instance v0, Lio/grpc/h$b$b;

    const/4 v1, 0x0

    const-string v2, "internal:health-check-consumer-listener"

    invoke-direct {v0, v2, v1}, Lio/grpc/h$b$b;-><init>(Ljava/lang/String;Ljava/lang/Boolean;)V

    sput-object v0, Lio/grpc/h;->b:Lio/grpc/h$b$b;

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    new-instance v1, Lio/grpc/h$b$b;

    const-string v2, "internal:disable-subchannel-reconnect"

    invoke-direct {v1, v2, v0}, Lio/grpc/h$b$b;-><init>(Ljava/lang/String;Ljava/lang/Boolean;)V

    sput-object v1, Lio/grpc/h;->c:Lio/grpc/h$b$b;

    new-instance v0, Lio/grpc/a$b;

    const-string v1, "internal:has-health-check-producer-listener"

    invoke-direct {v0, v1}, Lio/grpc/a$b;-><init>(Ljava/lang/String;)V

    sput-object v0, Lio/grpc/h;->d:Lio/grpc/a$b;

    new-instance v0, Lio/grpc/a$b;

    const-string v1, "io.grpc.IS_PETIOLE_POLICY"

    invoke-direct {v0, v1}, Lio/grpc/a$b;-><init>(Ljava/lang/String;)V

    sput-object v0, Lio/grpc/h;->e:Lio/grpc/a$b;

    new-instance v0, Lio/grpc/h$a;

    invoke-direct {v0}, Lio/grpc/h$k;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract a(Lio/grpc/h$i;)Lh88;
.end method

.method public abstract b(Lh88;)V
.end method

.method public c()V
    .locals 0

    return-void
.end method

.method public abstract d()V
.end method
