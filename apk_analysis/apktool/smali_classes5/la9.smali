.class public final Lla9;
.super Lgh4;
.source "SourceFile"

# interfaces
.implements Lnl3;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lgh4;",
        "Lnl3<",
        "Lic2$e;",
        "Lj59;",
        ">;"
    }
.end annotation


# static fields
.field public static final f:Lla9;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lla9;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lgh4;-><init>(I)V

    sput-object v0, Lla9;->f:Lla9;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Lic2$e;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string p0, "Z"

    sget-object v0, Lka9;->f:Lka9;

    invoke-static {p1, p0, v0}, Ljc2;->c(Lic2;Ljava/lang/String;Lnl3;)V

    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method
