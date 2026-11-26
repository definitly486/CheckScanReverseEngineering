.class public final Ldc2;
.super Lgh4;
.source "SourceFile"

# interfaces
.implements Lnl3;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lgh4;",
        "Lnl3<",
        "Lic2$c;",
        "Lj59;",
        ">;"
    }
.end annotation


# static fields
.field public static final f:Ldc2;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ldc2;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lgh4;-><init>(I)V

    sput-object v0, Ldc2;->f:Ldc2;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Lic2$c;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string p0, "GMT"

    sget-object v0, Lcc2;->f:Lcc2;

    invoke-static {p1, p0, v0}, Ljc2;->c(Lic2;Ljava/lang/String;Lnl3;)V

    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method
