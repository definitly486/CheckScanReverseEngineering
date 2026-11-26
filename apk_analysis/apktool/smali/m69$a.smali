.class public final Lm69$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lm69;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lm69;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# static fields
.field public static final a:Lm69$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lm69$a;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lm69$a;->a:Lm69$a;

    return-void
.end method
