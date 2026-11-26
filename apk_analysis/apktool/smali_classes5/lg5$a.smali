.class public final Llg5$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Llg5;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public final a:Lgx0;

.field public b:Lj95;

.field public final c:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v1, Lgx0;->e:Lgx0;

    invoke-static {v0}, Lgx0$a;->c(Ljava/lang/String;)Lgx0;

    move-result-object v0

    iput-object v0, p0, Llg5$a;->a:Lgx0;

    sget-object v0, Llg5;->e:Lj95;

    iput-object v0, p0, Llg5$a;->b:Lj95;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Llg5$a;->c:Ljava/util/ArrayList;

    return-void
.end method
