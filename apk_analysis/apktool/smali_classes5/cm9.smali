.class public final Lcm9;
.super Lb0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcm9$a;
    }
.end annotation


# static fields
.field public static final d:Lcm9$a;


# instance fields
.field public c:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcm9$a;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcm9;->d:Lcm9$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    sget-object v0, Lcm9;->d:Lcm9$a;

    invoke-direct {p0, v0}, Lb0;-><init>(Lo22$b;)V

    return-void
.end method
