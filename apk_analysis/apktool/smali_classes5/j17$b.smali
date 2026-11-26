.class public final Lj17$b;
.super Lgh4;
.source "SourceFile"

# interfaces
.implements Lll3;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lj17;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lgh4;",
        "Lll3<",
        "Lg17;",
        ">;"
    }
.end annotation


# static fields
.field public static final f:Lj17$b;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lj17$b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lgh4;-><init>(I)V

    sput-object v0, Lj17$b;->f:Lj17$b;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 1

    new-instance p0, Lg17;

    const-string v0, "\\*{2}[^*]+\\*{2}"

    invoke-direct {p0, v0}, Lg17;-><init>(Ljava/lang/String;)V

    return-object p0
.end method
