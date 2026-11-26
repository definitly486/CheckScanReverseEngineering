.class public final Lwc5;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ltc5;

.field public static final b:Ltc5;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lwc5$a;->f:Lwc5$a;

    invoke-static {v0}, Lh;->c(Lnl3;)Ltc5;

    move-result-object v0

    sput-object v0, Lwc5;->a:Ltc5;

    sget-object v0, Lwc5$b;->f:Lwc5$b;

    invoke-static {v0}, Lh;->c(Lnl3;)Ltc5;

    move-result-object v0

    sput-object v0, Lwc5;->b:Ltc5;

    return-void
.end method

.method public static final a(Lze7;)Ln67;
    .locals 3

    sget-object v0, Lp72;->d:Lba8;

    const-class v1, Ln67;

    const/4 v2, 0x0

    invoke-static {v1, p0, v0, v2}, Ln2;->c(Ljava/lang/Class;Lze7;Lba8;Li36;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ln67;

    return-object p0
.end method
