.class public final Lm69$c;
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
    name = "c"
.end annotation


# static fields
.field public static final a:Lm69$c;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lm69$c;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lm69$c;->a:Lm69$c;

    return-void
.end method
