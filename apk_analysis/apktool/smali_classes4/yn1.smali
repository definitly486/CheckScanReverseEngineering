.class public final Lyn1;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lg17;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lg17;

    const-string v1, "^#[\\d,\\w]{6}$"

    invoke-direct {v0, v1}, Lg17;-><init>(Ljava/lang/String;)V

    sput-object v0, Lyn1;->a:Lg17;

    return-void
.end method
