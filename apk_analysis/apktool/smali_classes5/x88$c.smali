.class public final Lx88$c;
.super Lgh4;
.source "SourceFile"

# interfaces
.implements Lll3;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lx88;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lgh4;",
        "Lll3<",
        "Ldf4<",
        "Ljava/util/List<",
        "+",
        "Lx88$b;",
        ">;>;>;"
    }
.end annotation


# static fields
.field public static final f:Lx88$c;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lx88$c;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lgh4;-><init>(I)V

    sput-object v0, Lx88$c;->f:Lx88$c;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 1

    new-instance p0, Lmr;

    sget-object v0, Lx88$b$a;->a:Lx88$b$a;

    invoke-direct {p0, v0}, Lmr;-><init>(Ldf4;)V

    return-object p0
.end method
