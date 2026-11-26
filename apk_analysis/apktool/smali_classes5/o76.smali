.class public final Lo76;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lg17;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lg17;

    const-string v1, "(\\d)(\\d{3})(\\d{3})(\\d{2})(\\d{2})"

    invoke-direct {v0, v1}, Lg17;-><init>(Ljava/lang/String;)V

    sput-object v0, Lo76;->a:Lg17;

    return-void
.end method
