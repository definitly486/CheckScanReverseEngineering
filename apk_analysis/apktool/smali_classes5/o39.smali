.class public final Lo39;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Laf6;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Laf6<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Lo39;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lo39;

    invoke-direct {v0}, Lo39;-><init>()V

    sput-object v0, Lo39;->a:Lo39;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method
