.class public final Lu24$a;
.super Ll0$f;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lu24;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Ll0$f<",
        "TV;>;"
    }
.end annotation


# static fields
.field public static final i:Lu24$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lu24$a<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-boolean v0, Lm0;->g:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    new-instance v0, Lu24$a;

    invoke-direct {v0}, Lu24$a;-><init>()V

    :goto_0
    sput-object v0, Lu24$a;->i:Lu24$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ll0;-><init>()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ll0;->cancel(Z)Z

    return-void
.end method
