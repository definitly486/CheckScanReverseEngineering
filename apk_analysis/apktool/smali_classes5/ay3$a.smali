.class public final Lay3$a;
.super Lgh4;
.source "SourceFile"

# interfaces
.implements Lll3;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lay3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lgh4;",
        "Lll3<",
        "Lzx3;",
        ">;"
    }
.end annotation


# static fields
.field public static final f:Lay3$a;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lay3$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lgh4;-><init>(I)V

    sput-object v0, Lay3$a;->f:Lay3$a;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 0

    new-instance p0, Lzx3;

    invoke-direct {p0}, Li02$a;-><init>()V

    return-object p0
.end method
