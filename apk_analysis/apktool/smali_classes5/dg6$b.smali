.class public final Ldg6$b;
.super Ldg6;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldg6;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# static fields
.field public static final a:Ldg6$b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ldg6$b;

    invoke-direct {v0}, Ldg6;-><init>()V

    sput-object v0, Ldg6$b;->a:Ldg6$b;

    return-void
.end method
