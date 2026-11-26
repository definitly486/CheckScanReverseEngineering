.class public final Lkd$x$a$a;
.super Lkd$x$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkd$x$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# static fields
.field public static final e:Lkd$x$a$a;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lkd$x$a$a;

    const-string v1, "get_card"

    invoke-direct {v0, v1}, Lkd$x$a;-><init>(Ljava/lang/String;)V

    sput-object v0, Lkd$x$a$a;->e:Lkd$x$a$a;

    return-void
.end method
