.class public final Lkd$x$a$c;
.super Lkd$x$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkd$x$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "c"
.end annotation


# static fields
.field public static final e:Lkd$x$a$c;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lkd$x$a$c;

    const-string v1, "start"

    invoke-direct {v0, v1}, Lkd$x$a;-><init>(Ljava/lang/String;)V

    sput-object v0, Lkd$x$a$c;->e:Lkd$x$a$c;

    return-void
.end method
