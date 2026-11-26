.class public final Lq99$c;
.super Lgh4;
.source "SourceFile"

# interfaces
.implements Lll3;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lq99;
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
        "Lq99$b;",
        ">;>;"
    }
.end annotation


# static fields
.field public static final f:Lq99$c;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lq99$c;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lgh4;-><init>(I)V

    sput-object v0, Lq99$c;->f:Lq99$c;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 0

    sget-object p0, Lq99$b;->Companion:Lq99$b$b;

    invoke-virtual {p0}, Lq99$b$b;->serializer()Ldf4;

    move-result-object p0

    return-object p0
.end method
