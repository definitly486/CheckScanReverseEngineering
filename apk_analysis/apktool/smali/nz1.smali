.class public final Lnz1;
.super Lgh4;
.source "SourceFile"

# interfaces
.implements Lll3;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lgh4;",
        "Lll3<",
        "Lj59;",
        ">;"
    }
.end annotation


# static fields
.field public static final f:Lnz1;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lnz1;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lgh4;-><init>(I)V

    sput-object v0, Lnz1;->f:Lnz1;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 0

    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method
