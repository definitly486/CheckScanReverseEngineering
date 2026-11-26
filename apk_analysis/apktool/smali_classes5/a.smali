.class public final La;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lgx0;->e:Lgx0;

    const-string v0, "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/"

    invoke-static {v0}, Lgx0$a;->c(Ljava/lang/String;)Lgx0;

    move-result-object v0

    iget-object v0, v0, Lgx0;->b:[B

    sput-object v0, La;->a:[B

    const-string v0, "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789-_"

    invoke-static {v0}, Lgx0$a;->c(Ljava/lang/String;)Lgx0;

    return-void
.end method
