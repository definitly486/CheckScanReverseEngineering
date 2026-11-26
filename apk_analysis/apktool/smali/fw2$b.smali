.class public final Lfw2$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lfw2;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfw2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# static fields
.field public static final a:Lfw2$b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lfw2$b;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lfw2$b;->a:Lfw2$b;

    return-void
.end method
