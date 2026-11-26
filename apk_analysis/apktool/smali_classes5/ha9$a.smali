.class public final Lha9$a;
.super Lgh4;
.source "SourceFile"

# interfaces
.implements Lll3;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lha9;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lgh4;",
        "Lll3<",
        "Lfa9;",
        ">;"
    }
.end annotation


# static fields
.field public static final f:Lha9$a;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lha9$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lgh4;-><init>(I)V

    sput-object v0, Lha9$a;->f:Lha9$a;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 2

    sget-object p0, Lga9;->f:Lga9;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lfa9$a;

    new-instance v1, Lnq;

    invoke-direct {v1}, Lnq;-><init>()V

    invoke-direct {v0, v1}, Lfa9$a;-><init>(Lnq;)V

    invoke-virtual {p0, v0}, Lga9;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p0, Lfa9;

    invoke-static {v0}, Le0$a;->c(Le0;)Lyx0;

    move-result-object v0

    invoke-direct {p0, v0}, Lfa9;-><init>(Lyx0;)V

    return-object p0
.end method
