.class public final Ldg6$a;
.super Ldg6;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldg6;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# static fields
.field public static final a:Ldg6$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ldg6$a;

    invoke-direct {v0}, Ldg6;-><init>()V

    sput-object v0, Ldg6$a;->a:Ldg6$a;

    return-void
.end method
