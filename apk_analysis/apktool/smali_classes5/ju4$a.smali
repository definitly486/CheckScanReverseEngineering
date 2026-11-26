.class public final Lju4$a;
.super Lgh4;
.source "SourceFile"

# interfaces
.implements Lll3;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lju4;-><init>(Ljf6;Leu4;Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lgh4;",
        "Lll3<",
        "Lhi0<",
        "Ldu4;",
        ">;>;"
    }
.end annotation


# static fields
.field public static final f:Lju4$a;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lju4$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lgh4;-><init>(I)V

    sput-object v0, Lju4$a;->f:Lju4$a;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 0

    new-instance p0, Lhi0;

    invoke-direct {p0}, Lhi0;-><init>()V

    return-object p0
.end method
